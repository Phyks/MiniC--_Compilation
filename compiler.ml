(* Production de code *)

open Mips
open Ast_typing

let nb_string = ref 0
let nb_if = ref 0
let nb_while = ref 0
let nb_for = ref 0
let nb_lazy = ref 0

let empty_mips = {
    text = nop;
    data = nop;
}

let rec mips_expr locals = function
    | ATEInt n ->
            {
                text = li a0 n;
                data = nop;
            }
    | ATOp (op, e1, e2) ->
            let mips_expr1 = mips_expr locals e1 in
            let mips_expr2 = mips_expr locals e2 in

            let mips_op = match op with
            | ATPlus -> add a0 t1 oreg a0
            | ATMinus -> sub a0 t1 oreg a0
            | ATEq -> seq a0 t1 a0
            | ATNeq -> sne a0 t1 a0
            | ATLt -> slt a0 t1 a0
            | ATLeq -> sle a0 t1 a0
            | ATGt -> sgt a0 t1 a0
            | ATGeq -> sge a0 t1 a0
            | ATTimes -> mul a0 t1 oreg a0
            | ATDiv -> div a0 t1 oreg a0
            | ATMod -> rem a0 t1 oreg a0
            | ATAnd -> and_ a0 t1 a0
            | ATOr -> or_ a0 t1 a0
            in

            begin
                match op with (* Lazy *)
                | ATOr ->
                    nb_lazy := !nb_lazy + 1;
                    {
                        text = mips_expr1.text
                            ++ sne a0 a0 zero
                            ++ bnez a0 ("lazy_end"^(string_of_int !nb_lazy))
                            ++ push a0
                            ++ mips_expr2.text
                            ++ sne a0 a0 zero
                            ++ pop t1
                            ++ mips_op
                            ++ label ("lazy_end"^(string_of_int !nb_lazy));
                        data = mips_expr1.data
                            ++ mips_expr2.data;
                    }
                | ATAnd -> 
                    nb_lazy := !nb_lazy + 1;
                    {
                        text = mips_expr1.text
                            ++ sne a0 a0 zero
                            ++ beqz a0 ("lazy_end"^(string_of_int !nb_lazy))
                            ++ push a0
                            ++ mips_expr2.text
                            ++ sne a0 a0 zero
                            ++ pop t1
                            ++ mips_op
                            ++ label ("lazy_end"^(string_of_int !nb_lazy));
                        data = mips_expr1.data
                            ++ mips_expr2.data;
                    }
                | ATPlus | ATMinus | ATEq | ATNeq | ATLt | ATLeq | ATGt | ATGeq | ATTimes | ATDiv | ATMod ->
                    {
                        text = mips_expr1.text
                            ++ push a0
                            ++ mips_expr2.text
                            ++ pop t1
                            ++ mips_op;
                        data = mips_expr1.data
                            ++ mips_expr2.data;
                    }
            end
    | ATEThis -> assert false
    | ATENull ->
            {
                text = li a0 0;
                data = nop;
            }
    | ATEQident (qident, local) -> begin
        match qident with
        | ATIdent ident ->
                if local then
                    let pos = Hashtbl.find locals (ATVIdent ident) in
                    {
                        text = lw a0 areg (-pos-8, fp);
                        data = nop;
                    }
                else
                    {
                        text = lw a0 alab ("var_"^ident);
                        data = nop;
                    }
        | ATTident (tid1, tid2) -> assert false
    end
    | ATDot (e, ident) -> assert false
    | ATArrow (e, ident) -> assert false
    | ATAssign (ATEQident (ATIdent i, local), e2) ->
            let mips_for_e2 = mips_expr locals e2 in
            if local then
                let pos = Hashtbl.find locals (ATVIdent i) in

                {
                    text = mips_for_e2.text
                        ++ sw a0 areg (-pos-8, fp);
                    data = mips_for_e2.data;
                }
            else
                {
                    text = mips_for_e2.text
                        ++ sw a0 alab ("var_"^i);
                    data = mips_for_e2.data;
                }
    | ATAssign (e1, e2) -> assert false (* TODO *)
    | ATApply (e, le) -> assert false (* TODO *)
    | ATInstance (tident, l) -> assert false
    | ATIncr (incr, ATEQident ((ATIdent i), local)) ->
        let load reg =
            if local then
                let pos = Hashtbl.find locals (ATVIdent i) in
                lw reg areg(-pos-8, fp)
            else
                lw reg alab ("var_"^i)
        in
        let store reg = 
            if local then
                let pos = Hashtbl.find locals (ATVIdent i) in
                sw reg areg(-pos-8, fp)
            else
                sw reg alab ("var_"^i)
        in

        begin
            match incr with
            | ATIncrL ->
                    {
                        text = load a0
                            ++ add a0 a0 oi 1
                            ++ store a0;
                        data = nop;
                    }
            | ATIncrR ->
                    {
                        text = load a0
                            ++ add a1 a0 oi 1
                            ++ store a1;
                        data = nop;
                    }
            | ATDecrL ->
                    {
                        text = load a0
                            ++ sub a0 a0 oi 1
                            ++ store a0;
                        data = nop;
                    }
            | ATDecrR ->
                    {
                        text = load a0
                            ++ sub a1 a0 oi 1
                            ++ store a1;
                        data = nop;
                    }
        end
    | ATIncr (incr, e) -> assert false (* TODO *)
    | ATUOp (uop, e) -> begin
        match uop with
        | ATEComm | ATUTimes -> begin
            match e with
            | ATEQident (ATIdent ident, local) ->
                let generated_mips = if local then (
                        let pos = Hashtbl.find locals (ATVIdent ident) in
                        if pos = -1 then (* Object on the heap *)
                            {
                                text = la a0 alab ("object_"^ident);
                                data = nop;
                            }
                        else
                            {
                                text = li a0 pos
                                    ++ add a0 a0 oi (-8)
                                    ++ add a0 a0 oreg fp;
                                data = nop;
                            }
                    )
                    else
                        {
                            text = la a0 alab ("var_"^ident);
                            data = nop;
                        }
                in

                {
                    text = generated_mips.text;
                    data = generated_mips.data;
                }
            | _ -> assert false (* TODO *)
            end
        | ATNot -> 
                let mips_for_expr = mips_expr locals e in
                {
                    text = mips_for_expr.text
                        ++ seq a0 a0 zero;
                    data = mips_for_expr.data;
                }
        | ATUMinus ->
                let mips_for_expr = mips_expr locals e in
                {
                    text = mips_for_expr.text
                        ++ neg a0 a0;
                    data = mips_for_expr.data;
                }
        | ATUPlus ->
                let mips_for_expr = mips_expr locals e in
                {
                    text = mips_for_expr.text;
                    data = mips_for_expr.data;
                }
    end

let mips_expr_string locals x y = match y with
    | ATString s -> 
            nb_string := !nb_string + 1;
            {
                text = x.text
                    ++ la a0 alab ("string_"^(string_of_int !nb_string))
                    ++ li v0 4
                    ++ syscall;
                data = x.data
                    ++ label ("string_"^(string_of_int !nb_string)) ++ asciiz ("\""^(String.escaped s)^"\"");
            }
    | ATExpr e ->
            let mips_for_expr = mips_expr locals e in
            {
                text = x.text
                    ++ mips_for_expr.text
                    ++ li v0 1
                    ++ syscall;
                data = x.data
                    ++ mips_for_expr.data;
            }

let rec mips_class x =
    let rec mips_for_member x = function
        | [] -> { text = x.text; data = x.data }
        | y :: l -> begin
            match y with
            | ATMVar var ->
                    let generated_mips =
                        {
                            text = x.text;
                            data = x.data
                                ++ dword [0];
                        }
                    in
                    mips_for_member generated_mips l
            | ATProto (virtuelle, proto) -> assert false (* TODO *)
        end
    in

    let mips_for_member = mips_for_member empty_mips x.at_member in

    {
        text = mips_for_member.text;
        data = mips_for_member.data;
    }

let rec mips_instruction locals x y = match y with
    | ATNop -> { text = x.text; data = x.data }
    | ATCout expr_string ->
            let cout_mips = List.fold_left (mips_expr_string locals) empty_mips expr_string in
            {
                text = x.text
                    ++ cout_mips.text;
                data = x.data
                    ++ cout_mips.data;
            }
    | ATIExpr e ->
            let mips_for_expr = mips_expr locals e in
            {
                text = x.text
                    ++ mips_for_expr.text;
                data = x.data
                    ++ mips_for_expr.data;
            }
    | ATIVar (var, assign) ->
        let mips_for_assign = match assign with
            | ATNoAssign -> { text = li a0 0; data = nop; }
            | ATSAExpr e -> mips_expr locals e
            | ATSATident (ident, expr_list) -> assert false (* TODO *)
        in

        let rec find_ident = function
            | ATVIdent ident -> ATVIdent ident
            | ATVUTimes var -> find_ident var
            | ATVEComm var -> find_ident var
        in

        let pos = Hashtbl.find locals (find_ident var) in
        {
            text = x.text
                ++ mips_for_assign.text
                ++ sw a0 areg (-pos-8, fp);
            data = x.data
                ++ mips_for_assign.data;
        }
    | ATTVar (decl_class, var, assign) ->
            let mips_for_assign = match assign with
            | ATNoAssign -> { text = nop; data = nop; }
            | ATSAExpr e -> assert false (* TODO *)
            | ATSATident (ident, expr_list) -> assert false (* TODO *)
            in

            let mips_for_class = mips_class decl_class in

            let rec find_ident = function
                | ATVIdent ident -> ident
                | ATVUTimes var -> assert false (* TODO *)
                | ATVEComm var -> assert false (* TODO *)
            in

            {
                text = x.text
                    ++ mips_for_assign.text
                    ++ mips_for_class.text;
                data = x.data
                    ++ mips_for_assign.data
                    ++ label ("object_"^(find_ident var))
                    ++ mips_for_class.data;
            }
    | ATIfElse (e, i1, i2, if_locals) ->
        nb_if := !nb_if + 1;
        let if_id = !nb_if in

        let mips_for_expr = mips_expr if_locals e in
        let mips_for_instr1 = mips_instruction if_locals empty_mips i1 in
        let mips_for_instr2 = mips_instruction if_locals empty_mips i2 in
        {
            text = x.text
                ++ mips_for_expr.text
                ++ beqz a0 ("else_"^(string_of_int if_id))
                ++ mips_for_instr1.text
                ++ b ("end_if_"^(string_of_int if_id))
                ++ label ("else_"^(string_of_int if_id))
                ++ mips_for_instr2.text
                ++ label ("end_if_"^(string_of_int if_id));
            data = x.data
                ++ mips_for_expr.data
                ++ mips_for_instr1.data
                ++ mips_for_instr2.data;
        }
    | ATWhile (e, i, while_locals) ->
            nb_while := !nb_while + 1;
            let while_id = !nb_while in 
            let mips_for_expr = mips_expr while_locals e in
            let mips_for_instr = mips_instruction while_locals empty_mips i in

            {
                text = x.text
                    ++ b ("test_while_"^(string_of_int while_id))
                    ++ label ("body_while_"^(string_of_int while_id))
                    ++ mips_for_instr.text
                    ++ label ("test_while_"^(string_of_int while_id))
                    ++ mips_for_expr.text
                    ++ bnez a0 ("body_while_"^(string_of_int while_id));
                data = x.data
                    ++ mips_for_instr.data
                    ++ mips_for_expr.data;
            }
    | ATFor (e1, e2, e3, i, for_locals) ->
            nb_for := !nb_for + 1;
            let for_id = !nb_for in

            let mips_for_expr1 = List.fold_left (fun a b -> let tmp_mips = mips_expr for_locals b in { text = a.text ++ tmp_mips.text; data = a.data ++ tmp_mips.data; } ) empty_mips e1 in
            let mips_for_expr2 = mips_expr for_locals e2 in
            let mips_for_expr3 = List.fold_left (fun a b -> let tmp_mips = mips_expr for_locals b in { text = a.text ++ tmp_mips.text; data = a.data ++ tmp_mips.data; } ) empty_mips e3 in
            let mips_for_instr = mips_instruction for_locals empty_mips i in

            {
                text = x.text
                    ++ mips_for_expr1.text
                    ++ b ("test_for_"^(string_of_int for_id))
                    ++ label ("body_for_"^(string_of_int for_id))
                    ++ mips_for_instr.text
                    ++ mips_for_expr3.text
                    ++ label ("test_for_"^(string_of_int for_id))
                    ++ mips_for_expr2.text
                    ++ bnez a0 ("body_for_"^(string_of_int for_id));
                data = x.data
                    ++ mips_for_expr1.data
                    ++ mips_for_expr2.data
                    ++ mips_for_expr3.data
                    ++ mips_for_instr.data;
            }
    | ATIBloc (bloc, bloc_locals) ->
        List.fold_left (mips_instruction bloc_locals) empty_mips bloc
    | ATReturn e ->
            let mips_for_expr = match e with
            | Some expr -> mips_expr locals expr
            | None -> empty_mips
            in
            {
                text = x.text
                    ++ mips_for_expr.text
                    ++ move v0 a0
                    ++ li v0 10
                    ++ syscall;
                data = x.data
                    ++ mips_for_expr.data;
            }
            (* TODO : Not ok if not main function *)
    (* TODO *)

let mips_fonction f =
    (* TODO *)
    let f_label = match f.at_proto.at_ident with
    | ATQvar (_, ATQident (ATIdent s)) -> "function_"^s
    | _ -> assert false
    in

    let mips_bloc = List.fold_left (mips_instruction f.at_locals) empty_mips f.at_bloc in

    {
        text = label f_label
            ++ mips_bloc.text;
        data = mips_bloc.data;
    }

let mips_member x = function
    | ATMVar var ->
            {
                text = nop;
                data = nop;
            }
    | ATProto (virtual_bool, proto) -> assert false
    (* TODO *)

let mips_decl x y = match y with
    | AT_Fonction f ->
            let generated_mips = mips_fonction f in
            {
                text = x.text ++ generated_mips.text;
                data = x.data ++ generated_mips.data;
            }
    | AT_DVar var ->
            let global_var x var = 
                let etiquette = match var with
                | ATVIdent ident -> "var_"^ident
                | _ -> assert false (* TODO *)
                in

                {
                    text = x.text;
                    data = x.data ++ label etiquette ++ dword [0];
                }
            in

            let mips_global_var = List.fold_left (global_var) empty_mips var.at_var in
            {
                text = x.text ++ mips_global_var.text;
                data = x.data ++ mips_global_var.data;
            }
    | AT_Class classe ->
            let mips_for_members = List.fold_left (mips_member) empty_mips classe.at_member in
            {
                text = x.text
                    ++ mips_for_members.text; (* TODO *)
                data = x.data
                    ++ mips_for_members.data;
            }
    (* TODO *)

let program x = 
    List.fold_left mips_decl { text = b "function_main"; data = nop; } x
