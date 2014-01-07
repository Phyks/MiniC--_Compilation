(* Production de code *)

open Mips
open Ast_typing
open Typer

let nb_string = ref 0
let nb_if = ref 0
let nb_while = ref 0
let nb_for = ref 0
let nb_lazy = ref 0

let empty_mips = {
    text = nop;
    data = nop;
}

let rec mips_expr locals objects = function
    | ATEInt n ->
            {
                text = li a0 n;
                data = nop;
            }
    | ATOp (op, e1, e2) ->
            let mips_expr1 = mips_expr locals objects e1 in
            let mips_expr2 = mips_expr locals objects e2 in

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
                    begin
                        match snd (Hashtbl.find locals (ATVIdent ident)) with
                        | (Pos pos, _) ->
                            {
                                text = lw a0 areg (-pos, fp);
                                data = nop;
                            }
                        | (Global_var_ref id, _) ->
                            {
                                text = lw a0 alab ("var_"^id);
                                data = nop;
                            }
                        | (Arg_ref pos, _) ->
                            {
                                text = lw a1 areg (-pos, fp)
                                    ++ lw a0 areg (0, a1);
                                data = nop;
                            }
                    end
                else
                    {
                        text = lw a0 alab ("var_"^ident);
                        data = nop;
                    }
        | ATTident (tid1, tid2) -> assert false
    end
    | ATDot (e, ident) ->
            let object_id = match e with ATEQident (ATIdent id, _) -> id | _ -> assert false in

            let object_desc = Hashtbl.find objects (ATVIdent object_id) in

            let ofs = snd (Hashtbl.find object_desc.fields (ATVIdent ident)) in

            if Hashtbl.mem locals (ATVIdent object_id) then begin
                match snd (Hashtbl.find locals (ATVIdent object_id)) with
                | (Pos pos, _) -> 
                        {
                            text = la a0 areg (-pos, fp)
                                ++ lw a0 areg (fst ofs, a0);
                            data = nop;
                        }
                | _ -> assert false; (* TODO *)
            end
            else begin
                {
                    text = la a0 alab ("var_"^(object_id))
                        ++ lw a0 areg (fst ofs, a0);
                    data = nop;
                }
            end
    | ATAssign (ATEQident (ATIdent i, local), e2) ->
            let mips_for_e2 = mips_expr locals objects e2 in
            
            if local then
                begin
                    match snd(Hashtbl.find locals (ATVIdent i)) with
                    | (Pos pos, _) ->
                        {
                            text = mips_for_e2.text
                                ++ sw a0 areg (-pos, fp);
                            data = mips_for_e2.data;
                        }
                    | (Global_var_ref id, _) ->
                        {
                            text = mips_for_e2.text
                                ++ sw a0 alab ("var_"^id);
                            data = mips_for_e2.data;
                        }
                    | (Arg_ref pos, _) ->
                        {
                            text = mips_for_e2.text
                                ++ lw a1 areg (-pos, fp)
                                ++ sw a0 areg (0, a1);
                            data = mips_for_e2.data;
                        }
                end
            else
                {
                    text = mips_for_e2.text
                        ++ sw a0 alab ("var_"^i);
                    data = mips_for_e2.data;
                }
    | ATAssign (ATUOp (ATUTimes, ATEQident (ATIdent i, local)), e2) ->
            let mips_for_e2 = mips_expr locals objects e2 in
            if local then
                begin
                    match snd(Hashtbl.find locals (ATVIdent i)) with
                    | (Pos pos, _) ->
                        {
                            text = mips_for_e2.text
                                ++ lw a1 areg (-pos, fp)
                                ++ sw a0 areg (0, a1);
                            data = mips_for_e2.data;
                        }
                    | (Global_var_ref id, _) ->
                        {
                            text = mips_for_e2.text
                                ++ lw a1 alab ("var_"^i)
                                ++ sw a0 areg (0, a1);
                            data = mips_for_e2.data;
                        }
                    | (Arg_ref pos, _) ->
                        {
                            text = mips_for_e2.text
                                ++ lw a1 areg (-pos, fp)
                                ++ lw a1 areg (0, a1)
                                ++ sw a0 areg (0, a1);
                            data = mips_for_e2.data;
                        }
                end
            else
                {
                    text = mips_for_e2.text
                        ++ lw a1 alab ("var_"^i)
                        ++ sw a0 areg (0, a1);
                    data = mips_for_e2.data;
                }
    | ATAssign (ATDot(ATEQident (ATIdent qid, _), id), e2) ->
            let object_desc = Hashtbl.find objects (ATVIdent qid) in

            let ofs = snd(Hashtbl.find object_desc.fields (ATVIdent id)) in

            let mips_for_e2 = mips_expr locals objects e2 in
            if Hashtbl.mem locals (ATVIdent qid) then begin
                match snd (Hashtbl.find locals (ATVIdent qid)) with
                | (Pos pos, _) -> 
                        {
                            text = mips_for_e2.text
                                ++ la t0 areg (-pos, fp)
                                ++ sw a0 areg (fst ofs, t0);
                            data = mips_for_e2.data;
                        }
                | _ -> assert false; (* TODO *)
            end
            else begin
                {
                    text = mips_for_e2.text
                        ++ la t0 alab ("var_"^(qid))
                        ++ sw a0 areg (fst ofs, t0);
                    data = mips_for_e2.data;
                }
            end
    | ATAssign (e1, e2) -> assert false (* TODO *)
    | ATApply (id, le) ->
            let compute_mips_push_args x e =
                let mips_for_expr = mips_expr locals objects (fst e) in
                {
                    text =  mips_for_expr.text
                        ++ push a0
                        ++ x.text;
                    data = mips_for_expr.data
                        ++ x.data;
                }
            in
            let mips_push_args = List.fold_left compute_mips_push_args empty_mips le in
            {
                text = mips_push_args.text
                    ++ jal ("function_"^id)
                    ++ popn (4*(List.length le))
                    ++ move a0 v0;
                data = mips_push_args.data;
            }
    | ATInstance (tident, l) -> assert false
    | ATIncr (incr, ATEQident ((ATIdent i), local)) ->
        let load reg =
            if local then
                begin
                    match snd(Hashtbl.find locals (ATVIdent i)) with
                    | (Pos pos, _) ->
                        lw reg areg(-pos, fp)
                    | (Global_var_ref id, _) ->
                        lw reg alab ("var_"^id)
                    | (Arg_ref pos, _) ->
                        lw reg areg(-pos, fp) ++ lw reg areg (0, reg)
                end
            else
                lw reg alab ("var_"^i)
        in
        let store reg = 
            if local then
                begin match snd(Hashtbl.find locals (ATVIdent i)) with 
                    | (Pos pos, _) ->
                        sw reg areg(-pos, fp)
                    | (Global_var_ref id, _) ->
                        sw reg alab ("var_"^id)
                    | (Arg_ref pos, _) ->
                        lw t0 areg (-pos, fp) ++ sw reg areg(0, t0)
                end
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
        | ATEComm -> begin
            match e with
            | ATEQident (ATIdent ident, local) ->
                let generated_mips = if local then (
                        begin
                            match snd(Hashtbl.find locals (ATVIdent ident)) with
                            | (Pos pos, _) ->
                                {
                                    text = la a0 areg (-pos,fp);
                                    data = nop;
                                }
                            | (Global_var_ref id, _) ->
                                {
                                    text = la a0 alab ("var_"^id);
                                    data = nop;
                                }
                            | (Arg_ref pos, _) ->
                                {
                                    text = la a0 areg (-pos,fp)
                                        ++ la a0 areg (0, a0);
                                    data = nop;
                                }
                        end
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
        | ATUTimes -> begin
            match e with
            | ATEQident (ATIdent ident, local) ->
                let generated_mips = if local then (
                        begin
                            match snd(Hashtbl.find locals (ATVIdent ident)) with
                            | (Pos pos, _) ->
                                {
                                    text = lw a0 areg (-pos,fp)
                                        ++ lw a0 areg (0, a0);
                                    data = nop;
                                }
                            | (Global_var_ref id, _) ->
                                {
                                    text = lw a0 alab ("var_"^id)
                                        ++ lw a0 areg (0, a0);
                                    data = nop;
                                }
                            | (Arg_ref pos, _) ->
                                {
                                    text = lw a0 areg (-pos,fp)
                                        ++ lw a0 areg (0, a0)
                                        ++ lw a0 areg (0, a0);
                                    data = nop;
                                }
                        end
                    )
                    else
                        {
                            text = lw a0 alab ("var_"^ident)
                                ++ lw a0 areg (0, a0);
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
                let mips_for_expr = mips_expr locals objects e in
                {
                    text = mips_for_expr.text
                        ++ seq a0 a0 zero;
                    data = mips_for_expr.data;
                }
        | ATUMinus ->
                let mips_for_expr = mips_expr locals objects e in
                {
                    text = mips_for_expr.text
                        ++ neg a0 a0;
                    data = mips_for_expr.data;
                }
        | ATUPlus ->
                let mips_for_expr = mips_expr locals objects e in
                {
                    text = mips_for_expr.text;
                    data = mips_for_expr.data;
                }
    end

let mips_expr_string locals objects x y = match y with
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
            let mips_for_expr = mips_expr locals objects e in
            {
                text = x.text
                    ++ mips_for_expr.text
                    ++ li v0 1
                    ++ syscall;
                data = x.data
                    ++ mips_for_expr.data;
            }

let rec mips_class x =
    {
        text = nop;
        data = nop;
    }

let rec mips_instruction locals objects x y = match y with
    | ATNop -> { text = x.text; data = x.data }
    | ATCout expr_string ->
            let cout_mips = List.fold_left (mips_expr_string locals objects) empty_mips expr_string in
            {
                text = x.text
                    ++ cout_mips.text;
                data = x.data
                    ++ cout_mips.data;
            }
    | ATIExpr e ->
            let mips_for_expr = mips_expr locals objects e in
            {
                text = x.text
                    ++ mips_for_expr.text;
                data = x.data
                    ++ mips_for_expr.data;
            }
    | ATIVar (var, assign) ->
        let mips_for_assign = match assign with
            | ATNoAssign -> { text = li a0 0; data = nop; }
            | ATSAExpr e -> mips_expr locals objects e
            | ATSATident (ident, expr_list) -> assert false (* TODO *)
        in

        let rec find_ident = function
            | ATVIdent ident -> ATVIdent ident
            | ATVUTimes var -> find_ident var
            | ATVEComm var -> find_ident var
        in

        begin
            match snd(Hashtbl.find locals (find_ident var)) with
            | (Pos pos, _) -> 
                {
                    text = x.text
                        ++ mips_for_assign.text
                        ++ sw a0 areg (-pos, fp);
                    data = x.data
                        ++ mips_for_assign.data;
                }
            | (Global_var_ref id, _) ->
                {
                    text = x.text;
                    data = x.data;
                }
            | (Arg_ref _, _) -> assert false; (* TODO *)
        end
    | ATTVar (var, assign) ->
            let mips_for_assign = match assign with
            | ATNoAssign -> { text = nop; data = nop; }
            | ATSAExpr e -> assert false (* TODO *)
            | ATSATident (ident, expr_list) -> assert false (* TODO *)
            in

            let decl_class = Hashtbl.find objects var in

            let mips_for_class = mips_class decl_class in

            {
                text = x.text
                    ++ mips_for_assign.text
                    ++ mips_for_class.text;
                data = x.data
                    ++ mips_for_assign.data
                    ++ mips_for_class.data;
            }
    | ATIfElse (e, i1, i2, if_locals, if_objects, frame_size) ->
        nb_if := !nb_if + 1;
        let if_id = !nb_if in

        let mips_for_expr = mips_expr if_locals if_objects e in
        let mips_for_instr1 = mips_instruction if_locals if_objects empty_mips i1 in
        let mips_for_instr2 = mips_instruction if_locals if_objects empty_mips i2 in
        {
            text = x.text
                ++ add sp sp oi (-frame_size)
                ++ mips_for_expr.text
                ++ beqz a0 ("else_"^(string_of_int if_id))
                ++ mips_for_instr1.text
                ++ b ("end_if_"^(string_of_int if_id))
                ++ label ("else_"^(string_of_int if_id))
                ++ mips_for_instr2.text
                ++ label ("end_if_"^(string_of_int if_id))
                ++ add sp sp oi (frame_size);
            data = x.data
                ++ mips_for_expr.data
                ++ mips_for_instr1.data
                ++ mips_for_instr2.data;
        }
    | ATWhile (e, i, while_locals, while_objects, frame_size) ->
            nb_while := !nb_while + 1;
            let while_id = !nb_while in 
            let mips_for_expr = mips_expr while_locals while_objects e in
            let mips_for_instr = mips_instruction while_locals while_objects empty_mips i in

            {
                text = x.text
                    ++ add sp sp oi (-frame_size)
                    ++ b ("test_while_"^(string_of_int while_id))
                    ++ label ("body_while_"^(string_of_int while_id))
                    ++ mips_for_instr.text
                    ++ label ("test_while_"^(string_of_int while_id))
                    ++ mips_for_expr.text
                    ++ bnez a0 ("body_while_"^(string_of_int while_id))
                    ++ add sp sp oi (frame_size);
                data = x.data
                    ++ mips_for_instr.data
                    ++ mips_for_expr.data;
            }
    | ATFor (e1, e2, e3, i, for_locals, for_objects, frame_size) ->
            nb_for := !nb_for + 1;
            let for_id = !nb_for in

            let mips_for_expr1 = List.fold_left (fun a b -> let tmp_mips = mips_expr for_locals for_objects b in { text = a.text ++ tmp_mips.text; data = a.data ++ tmp_mips.data; } ) empty_mips e1 in
            let mips_for_expr2 = mips_expr for_locals for_objects e2 in
            let mips_for_expr3 = List.fold_left (fun a b -> let tmp_mips = mips_expr for_locals for_objects b in { text = a.text ++ tmp_mips.text; data = a.data ++ tmp_mips.data; } ) empty_mips e3 in
            let mips_for_instr = mips_instruction for_locals for_objects empty_mips i in

            {
                text = x.text
                    ++ add sp sp oi (-frame_size)
                    ++ mips_for_expr1.text
                    ++ b ("test_for_"^(string_of_int for_id))
                    ++ label ("body_for_"^(string_of_int for_id))
                    ++ mips_for_instr.text
                    ++ mips_for_expr3.text
                    ++ label ("test_for_"^(string_of_int for_id))
                    ++ mips_for_expr2.text
                    ++ bnez a0 ("body_for_"^(string_of_int for_id))
                    ++ add sp sp oi (frame_size);
                data = x.data
                    ++ mips_for_expr1.data
                    ++ mips_for_expr2.data
                    ++ mips_for_expr3.data
                    ++ mips_for_instr.data;
            }
    | ATIBloc (bloc, bloc_locals, bloc_objects, frame_size) ->
            let tmp_mips = List.fold_left (mips_instruction bloc_locals bloc_objects) empty_mips bloc in
            {
                text = x.text
                    ++ add sp sp oi (-frame_size)
                    ++ tmp_mips.text
                    ++ add sp sp oi (frame_size);
                data = x.data
                    ++ tmp_mips.data;
            }
    | ATReturn (e, f_label) ->
            let mips_for_expr = match e with
            | Some expr -> mips_expr locals objects expr
            | None -> { text = li a0 0; data = nop; }
            in

            let mips_exit = if f_label = "main" then li v0 17 ++ syscall else b ("end_function_"^f_label) in
            {
                text = x.text
                    ++ mips_for_expr.text
                    ++ move v0 a0
                    ++ mips_exit;
                data = x.data
                    ++ mips_for_expr.data;
            }

let mips_fonction f =
    let f_label = match f.at_proto.at_ident_proto with
    | ATQvar (_, ATQident (ATIdent s)) -> "function_"^s
    | _ -> assert false
    in

    let mips_exit = 
        if f_label = "function_main" then
            {
                text = li v0 10
                    ++ syscall;
                data = nop;
            }
        else
            {
                text = move v0 a0
                    ++ jr ra;
                data = nop;
            }
    in

    let mips_bloc = List.fold_left (mips_instruction f.at_locals f.at_objects) empty_mips f.at_bloc in

    let length = f.at_frame_size in
    
    {
        text = label f_label
            ++ add sp sp oi (-length-4)
            ++ sw fp areg (length, sp)
            ++ add fp sp oi (length)
            ++ sw ra areg (length - 4, sp)
            ++ mips_bloc.text
            ++ label ("end_"^f_label)
            ++ lw ra areg (length - 4, sp)
            ++ lw fp areg (length, sp)
            ++ add sp sp oi (length+4)
            ++ mips_exit.text;
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
                let rec etiquette = function
                | ATVIdent ident -> "var_"^ident
                | ATVUTimes var -> etiquette var
                | ATVEComm var -> etiquette var
                in

                (* TODO *** type *)

                {
                    text = x.text;
                    data = x.data ++ label (etiquette (fst var)) ++ dword [0];
                }
            in

            let mips_global_var = List.fold_left (global_var) empty_mips var in
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
