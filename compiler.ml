(* Production de code *)

open Mips
open Ast_typing

let nb_string = ref 0

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
            | ATEq -> seq a0 a0 t1
            | ATNeq -> sne a0 a0 t1
            | ATLt -> slt a0 a0 t1
            | ATLeq -> sle a0 a0 t1
            | ATGt -> sgt a0 a0 t1
            | ATGeq -> sge a0 a0 t1
            | ATTimes -> mul a0 t1 oreg a0
            | ATDiv -> div a0 t1 oreg a0
            | ATMod -> rem a0 t1 oreg a0
            | ATAnd -> and_ a0 a0 t1
            | ATOr -> or_ a0 a0 t1
            in

            {
                text = mips_expr1.text
                    ++ push a0
                    ++ mips_expr2.text
                    ++ pop t1
                    ++ mips_op;
                data = mips_expr1.data
                    ++ mips_expr2.data;
            }
    | ATEThis -> assert false
    | ATEFalse -> assert false
    | ATETrue -> assert false
    | ATENull -> assert false
    | ATEQident qident -> begin
        match qident with
        | ATIdent ident ->
                let pos = Hashtbl.find locals (ATVIdent ident) in
                {
                    text = lw a0 areg (-pos-8, fp);
                    data = nop;
                }
        | ATTident (tid1, tid2) -> assert false
    end
    | ATDot (e, ident) -> assert false
    | ATArrow (e, ident) -> assert false
    | ATAssign (ATEQident (ATIdent i), e2) ->
            let mips_for_e2 = mips_expr locals e2 in
            let pos = Hashtbl.find locals (ATVIdent i) in

            {
                text = mips_for_e2.text
                    ++ sw a0 areg (-pos-8, fp);
                data = mips_for_e2.data;
            }
    | ATAssign (e1, e2) -> assert false (* TODO *)
    | ATApply (e, l) -> assert false
    | ATInstance (tident, l) -> assert false
    | ATIncr (incr, ATEQident (ATIdent i)) -> begin
        let pos = Hashtbl.find locals (ATVIdent i) in

        match incr with
        | ATIncrL ->
                {
                    text = lw a0 areg(-pos-8, fp)
                        ++ add a0 a0 oi 1
                        ++ sw a0 areg(-pos-8, fp);
                    data = nop;
                }
        | ATIncrR ->
                {
                    text = lw a0 areg(-pos-8, fp)
                        ++ add a1 a0 oi 1
                        ++ sw a1 areg(-pos-8, fp);
                    data = nop;
                }
        | ATDecrL ->
                {
                    text = lw a0 areg(-pos-8, fp)
                        ++ sub a0 a0 oi 1
                        ++ sw a0 areg(-pos-8, fp);
                    data = nop;
                }
        | ATDecrR ->
                {
                    text = lw a0 areg(-pos-8, fp)
                        ++ sub a1 a0 oi 1
                        ++ sw a1 areg(-pos-8, fp);
                    data = nop;
                }
    end
    | ATIncr (incr, e) -> assert false (* TODO *)
    | ATUOp (uop, e) -> assert false
    (* TODO *)

let mips_expr_string locals x y = match y with
    | ATString s -> 
            nb_string := !nb_string + 1;
            {
                text = x.text
                    ++ la a0 alab ("string_"^(string_of_int !nb_string))
                    ++ li v0 4
                    ++ syscall;
                data = x.data
                    ++ label ("string_"^(string_of_int !nb_string)) ++ asciiz s;
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

let mips_instruction locals x y = match y with
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
    | ATIVar (var, assign) -> begin
        match assign with
            | ATNoAssign -> assert false (* TODO *)
            | ATSAExpr e -> 
                    let mips_for_assign = mips_expr locals e in
                    let pos = Hashtbl.find locals var in
                    {
                        text = x.text
                            ++ mips_for_assign.text
                            ++ sw a0 areg (-pos-8, fp); (* TODO : not sure *)
                        data = x.data
                            ++ mips_for_assign.data;
                    }
            | ATSATident (ident, expr_list) -> assert false (* TODO *)
    end
    | ATIf (e, i) -> assert false
    | ATIfElse (e, i1, i2) -> assert false
    | ATWhile (e, i) -> assert false
    | ATFor (e1, e2, e3, i) -> assert false
    | ATIBloc bloc -> assert false
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
    | ATQvar (_, ATQident (ATIdent s)) -> s
    | _ -> assert false
    in

    let mips_bloc = List.fold_left (mips_instruction f.at_locals) empty_mips f.at_bloc in

    {
        text = label f_label
            ++ mips_bloc.text;
        data = mips_bloc.data;
    }

let mips_decl x y = match y with
    | AT_Fonction f ->
            let generated_mips = mips_fonction f in
            {
                text = x.text ++ generated_mips.text;
                data = x.data ++ generated_mips.data;
            }
    | AT_DVar var ->
        assert false
    | _ -> assert false
    (* TODO *)

let program x = 
    List.fold_left mips_decl empty_mips x
