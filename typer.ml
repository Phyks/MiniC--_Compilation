(* Typage pour MiniC++ *)
open Ast
open Ast_typing

exception Error of string*Lexing.position

let includes = ref false
let is_main_here = ref false

let globals = Hashtbl.create 17
let decl_class = Hashtbl.create 17

let is_left_value = function
    | EQident _ -> true
    | UOp (UTimes, _) -> true
    | _ -> false


let types_ast_to_atast = function
    | Void -> ATVoid
    | Int -> ATInt
    | ASTTident y -> ATASTTident y

let op_ast_to_atast = function
    | Eq -> ATEq
    | Neq -> ATNeq
    | Lt -> ATLt
    | Leq -> ATLeq
    | Gt -> ATGt
    | Geq -> ATGeq
    | Plus -> ATPlus
    | Minus -> ATMinus
    | Times -> ATTimes
    | Div -> ATDiv
    | Mod -> ATMod
    | And -> ATAnd
    | Or -> ATOr

let uop_ast_to_atast = function
    | EComm -> ATEComm
    | Not -> ATNot
    | UMinus -> ATUMinus
    | UPlus -> ATUPlus
    | UTimes -> ATUTimes

let type_qident = function
    | Ident x -> ATIdent x
    | _ -> assert false
    (* TODO *)

let rec type_var pos locals heap = function
    | VIdent ident -> 
        if Hashtbl.mem locals (ATVIdent ident) then
            raise (Error ("redeclaration of "^ident, pos));

        let pos = if not heap then
                (4 * Hashtbl.length locals)
            else
                -1
            in
        Hashtbl.add locals (ATVIdent ident) (Pos pos);

        ATVIdent ident;
    | VUTimes ((VIdent ident) as var) ->
            let new_var = type_var pos locals false var in

            ATVUTimes new_var
    | VUTimes _ -> raise (Error ("double pointer not allowed", pos))
    | VEComm ((VIdent ident) as var) ->
            let new_var = type_var pos locals false var in

            ATVEComm new_var
    | VEComm _ -> raise (Error ("double reference not allowed", pos))

let type_qvar = function
    | Qident x -> ATQident (type_qident x)
    | _ -> assert false
    (* TODO *)

let type_incr = function
    | IncrL -> ATIncrL
    | IncrR -> ATIncrR
    | DecrL -> ATDecrL
    | DecrR -> ATDecrR

let rec type_expr pos locals = function
    | EInt n -> ATEInt n
    | Assign (e1, e2) when is_left_value e1 -> ATAssign (type_expr pos locals e1, type_expr pos locals e2)
    | Assign (e1, e2) -> raise (Error ("Valeur gauche attendue.", pos))
    | Op (op, e1, e2) -> ATOp (op_ast_to_atast op, type_expr pos locals e1, type_expr pos locals e2)
    | UOp (uop, e) -> ATUOp (uop_ast_to_atast uop, type_expr pos locals e)
    | EQident qident -> begin
        match qident with
        | Ident ident ->
                if Hashtbl.mem locals (ATVIdent ident) then
                    ATEQident (ATIdent ident, true)
                else
                    if Hashtbl.mem globals (ATVIdent ident) then
                        ATEQident (ATIdent ident, false)
                    else
                        raise (Error ("Unbound variable "^ident, pos))
        | Tident (tid1, tid2) -> assert false
    end
    | Incr (incr, expr) when is_left_value expr -> ATIncr (type_incr incr, type_expr pos locals expr)
    | Incr (incr, expr) -> raise (Error ("Valeur gauche attendue.", pos))
    | ETrue -> ATEInt 1
    | EFalse -> ATEInt 0
    | ENull -> ATEInt 0
    | Apply (e, le) -> ATApply ( type_expr pos locals e, List.map (type_expr pos locals) le)
    | Dot (e, id) -> ATDot ( type_expr pos locals e, id)
    | _ -> assert false (* TODO *)

let type_expr_string pos locals = function
    | String s -> ATString s
    | Expr e -> ATExpr (type_expr pos locals e)

let rec type_instruction locals x = match x.instruction_content with
    | Nop -> ATNop
    | Cout expr ->
            if !includes then
                ATCout (List.map (type_expr_string (fst x.instruction_loc) locals) expr)
            else
                raise (Error ("iostream not included.", (fst x.instruction_loc)))
    | IExpr expr -> ATIExpr (type_expr (fst x.instruction_loc) locals expr)
    | Return some_expr -> begin
        match some_expr with
            | None -> ATReturn None
            | Some expr -> ATReturn (Some (type_expr (fst x.instruction_loc) locals expr))
    end
    | IVar (ast_type, ident, assign) -> begin
        match ast_type with
            | ASTTident tident -> begin
                let new_ident = type_var (fst x.instruction_loc) locals true ident in

                match assign with
                | NoAssign -> ATTVar (Hashtbl.find decl_class tident, new_ident, ATNoAssign)
                | _ -> assert false (* TODO *)
            end
            | Void | Int ->begin
                let new_ident = type_var (fst x.instruction_loc) locals false ident in

                match new_ident with
                | ATVIdent _ | ATVUTimes _ -> begin
                    match assign with
                    | NoAssign -> ATIVar (new_ident, ATNoAssign)
                    | SAExpr e -> ATIVar (new_ident, ATSAExpr (type_expr (fst x.instruction_loc) locals e))
                    | SATident (ident, expr_list) -> assert false (* TODO *)
                end
                | ATVEComm ((ATVIdent ident) as var) -> begin
                    match assign with
                    | NoAssign -> raise (Error ("Reference declared but not initialized.", (fst x.instruction_loc)))
                    | SAExpr (EQident (Ident eident)) -> begin
                            try
                                let other_ident = Hashtbl.find locals (ATVIdent eident) in
                                Hashtbl.add locals (ATVIdent ident) other_ident;
                                
                                ATIVar(var, ATSAExpr (ATEQident((ATIdent eident), true)))
                            with Not_found -> begin
                                try
                                    Hashtbl.find globals (ATVIdent eident);

                                    Hashtbl.add locals (ATVIdent ident) (Global_var_ref eident);

                                    ATIVar(var, ATSAExpr (ATEQident((ATIdent eident), false)))
                                with Not_found ->
                                    raise (Error ("Unbound variable "^eident, fst x.instruction_loc))
                            end
                        end
                    | SATident _ | SAExpr _ -> raise (Error ("Invalid reference initialization.", (fst x.instruction_loc)))
                    end
                | _ -> assert false (* TODO *)
            end
        end
    | If (e, instr) -> let if_locals = Hashtbl.copy locals in ATIfElse (type_expr (fst x.instruction_loc) if_locals e, type_instruction if_locals instr, ATNop, if_locals)
    | IfElse (e, instr1, instr2)  -> let if_locals = Hashtbl.copy locals in ATIfElse (type_expr (fst x.instruction_loc) if_locals e, type_instruction if_locals instr1, type_instruction if_locals instr2, if_locals)
    | IBloc bloc -> let bloc_locals = Hashtbl.copy locals in ATIBloc (type_bloc bloc_locals bloc, bloc_locals)
    | While (e, instr) -> let while_locals = Hashtbl.copy locals in ATWhile (type_expr (fst x.instruction_loc) while_locals e, type_instruction while_locals instr, while_locals)
    | For (e1, se2, e3, i) ->
            let for_locals = Hashtbl.copy locals in
            let some_expr2 = 
                match se2 with
                | None -> ATEInt 1
                | Some expr -> type_expr (fst x.instruction_loc) for_locals expr
            in

            let expr1 = List.map (type_expr (fst x.instruction_loc) for_locals) e1 in
            let expr3 = List.map (type_expr (fst x.instruction_loc) for_locals) e3 in

            ATFor(expr1, some_expr2, expr3, type_instruction for_locals i, for_locals)

and type_bloc locals x =
    let bloc_content = match x.bloc_content with
    | Bloc_content y -> y
    in

    List.map (type_instruction locals) bloc_content

let type_proto_ident = function
    | Qvar (x, y) ->
            ATQvar (types_ast_to_atast x, type_qvar y)
    | _ -> assert false
    (* TODO *)

let type_args pos locals x =
    (types_ast_to_atast (fst x)), type_var pos locals false (snd x)

let type_proto locals x =
    List.fold_left (fun a b -> Hashtbl.add locals (type_var (fst x.proto_loc) locals false (snd b)) (Pos (4 * Hashtbl.length locals))) () x.args;

    let () = 
        match x.ident with
        | Qvar (a, b) when a = Int && b = Qident (Ident "main") ->
                Hashtbl.add globals (ATVIdent "main") ();
                if List.length x.args = 0 then
                    if not !is_main_here then
                        is_main_here := true
                    else
                        raise (Error ("Redeclaration of main function.", fst x.proto_loc))
        | Qvar (a, Qident (Ident id)) -> 
                Hashtbl.add globals (ATVIdent id) ();
        | _ -> ()
    in

    {
        at_ident_proto = type_proto_ident x.ident;
        at_args = List.map (type_args (fst x.proto_loc) locals) x.args;
    }

let type_fonction x =
    let locals = Hashtbl.create 17 in
 
    let type_for_proto = type_proto locals (fst x.fonction_content) in
    let type_for_bloc = type_bloc locals (snd x.fonction_content) in

    {
        at_proto = type_for_proto; 
        at_bloc = type_for_bloc;
        at_locals = locals
    }

let type_member pos = function
    | MVar var -> 
            ATMVar {
                at_ast_type = (types_ast_to_atast (fst var.decl_vars_content));
                at_var = List.map (type_var pos (Hashtbl.create 17) false) (snd var.decl_vars_content);
            }
    | Proto (virtual_bool, proto) -> assert false (* TODO *)

let type_class x = begin
    match x.decl_class_content with
        | ident, supers, members ->
            let ast_typing_class = {
                at_ident_class = ident;
                at_supers = None;
                at_member = List.map (type_member (fst x.decl_class_loc)) members;
            }
            in

            Hashtbl.add decl_class ident ast_typing_class;
            ast_typing_class
    end
    (* TODO *)

let type_decl = function
    | DVar x ->
            let pos = fst x.decl_vars_loc in

            let fold_globals x y =
                let typed_var = type_var pos (Hashtbl.create 17) false y in
                let rec get_ident = function
                    | ATVIdent ident -> ATVIdent ident
                    | ATVUTimes var -> get_ident var
                    | ATVEComm var -> assert false (* TODO *)
                in

                Hashtbl.add globals (get_ident typed_var) ()
            in

            List.fold_left fold_globals () (snd x.decl_vars_content);
            AT_DVar {
                at_ast_type = (types_ast_to_atast (fst x.decl_vars_content));
                at_var = List.map (type_var pos (Hashtbl.create 17) false) (snd x.decl_vars_content);
            }
    | Class x -> AT_Class (type_class x)
    | Fonction x -> AT_Fonction (type_fonction x)

let rec type_ast p = 
    if p.includes then includes := true;

    let return = List.map type_decl p.program in

    if not !is_main_here then
        raise (Error("No \"int main()\" function present", fst p.program_loc))
    else
        return
