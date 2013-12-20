(* Typage pour MiniC++ *)
open Ast
open Ast_typing

exception Error of string

let includes = ref false
let is_main_here = ref false

let globals = Hashtbl.create 17

let is_left_value = function
    | EQident _ -> true
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
    | EComm -> assert false (* TODO *)
    | Not -> ATNot
    | UMinus -> ATUMinus
    | UPlus -> ATUPlus
    | UTimes -> ATUTimes

let type_qident = function
    | Ident x -> ATIdent x
    | _ -> assert false
    (* TODO *)

let type_var = function
    | VIdent ident -> ATVIdent ident
    | VUTimes ident -> assert false
    | VEComm ident -> assert false

let type_qvar = function
    | Qident x -> ATQident (type_qident x)
    | _ -> assert false
    (* TODO *)

let type_incr = function
    | IncrL -> ATIncrL
    | IncrR -> ATIncrR
    | DecrL -> ATDecrL
    | DecrR -> ATDecrR

let rec type_expr locals = function
    | EInt n -> ATEInt n
    | Assign (e1, e2) when is_left_value e1 -> ATAssign (type_expr locals e1, type_expr locals e2)
    | Assign (e1, e2) -> raise (Error "Valeur gauche attendue.")
    | Op (op, e1, e2) -> ATOp (op_ast_to_atast op, type_expr locals e1, type_expr locals e2)
    | UOp (uop, e) -> ATUOp (uop_ast_to_atast uop, type_expr locals e)
    | EQident qident -> begin
        match qident with
        | Ident ident ->
                if Hashtbl.mem locals (ATVIdent ident) then
                    ATEQident (ATIdent ident, true)
                else
                    if Hashtbl.mem globals (ATVIdent ident) then
                        ATEQident (ATIdent ident, false)
                    else
                        raise (Error ("Unbound variable "^ident))
        | Tident (tid1, tid2) -> assert false
    end
    | Incr (incr, expr) when is_left_value expr -> ATIncr (type_incr incr, type_expr locals expr)
    | Incr (incr, expr) -> raise (Error "Valeur gauche attendue.")
    | ETrue -> ATEInt 1
    | EFalse -> ATEInt 0
    | _ -> assert false
    (* TODO *)

let type_expr_string locals = function
    | String s -> ATString s
    | Expr e -> ATExpr (type_expr locals e)

let rec type_instruction locals x = match x.instruction_content with
    | Nop -> ATNop
    | Cout expr ->
            if !includes then
                ATCout (List.map (type_expr_string locals) expr)
            else
                raise (Error "iostream not included.")
    | IExpr expr -> ATIExpr (type_expr locals expr)
    | Return some_expr -> begin
        match some_expr with
            | None -> ATReturn None
            | Some expr -> ATReturn (Some (type_expr locals expr))
    end
    | IVar (ast_type, VIdent ident, assign) -> begin
        if Hashtbl.mem locals (ATVIdent ident) then
            raise (Error ("redeclaration of "^ident));

        Hashtbl.add locals (ATVIdent ident) (4 * Hashtbl.length locals);
        match assign with
        | NoAssign -> ATIVar (ATVIdent ident, ATNoAssign)
        | SAExpr e -> ATIVar (ATVIdent ident, ATSAExpr (type_expr locals e))
        | SATident (ident, expr_list) -> assert false (* TODO *)
    end
    | IVar (ast_type, ident, assign) -> assert false (* TODO *)
    | If (e, instr) -> let if_locals = Hashtbl.copy locals in ATIfElse (type_expr if_locals e, type_instruction if_locals instr, ATNop, if_locals)
    | IfElse (e, instr1, instr2)  -> let if_locals = Hashtbl.copy locals in ATIfElse (type_expr if_locals e, type_instruction if_locals instr1, type_instruction if_locals instr2, if_locals)
    | IBloc bloc -> let bloc_locals = Hashtbl.copy locals in ATIBloc (type_bloc bloc_locals bloc, bloc_locals)
    | While (e, instr) -> let while_locals = Hashtbl.copy locals in ATWhile (type_expr while_locals e, type_instruction while_locals instr, while_locals)
    | For (e1, se2, e3, i) ->
            let for_locals = Hashtbl.copy locals in
            let some_expr2 = 
                match se2 with
                | None -> ATEInt 1
                | Some expr -> type_expr for_locals expr
            in

            let expr1 = List.map (type_expr for_locals) e1 in
            let expr3 = List.map (type_expr for_locals) e3 in

            ATFor(expr1, some_expr2, expr3, type_instruction for_locals i, for_locals)

and type_bloc locals x =
    let bloc_content = match x.bloc_content with
    | Bloc_content y -> y
    in

    List.map (type_instruction locals) bloc_content

let type_proto_ident = function
    | Qvar (x, y) ->
            if x = Int && y = Qident (Ident "main") then is_main_here := true;
            ATQvar (types_ast_to_atast x, type_qvar y)
    | _ -> assert false
    (* TODO *)

let type_args x =
    (types_ast_to_atast (fst x)), type_var (snd x)

let type_proto locals x =
    List.fold_left (fun a b -> Hashtbl.add locals (type_var (snd b)) (4 * Hashtbl.length locals)) () x.args;

    {
        at_ident = type_proto_ident x.ident;
        at_args = List.map type_args x.args;
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

let type_decl = function
    | DVar x ->
            List.fold_left (fun x y -> Hashtbl.add globals (type_var y) ()) () (snd x.decl_vars_content);
            AT_DVar {
                at_ast_type = (types_ast_to_atast (fst x.decl_vars_content));
                at_var = List.map type_var (snd x.decl_vars_content);
            }
    | Class x -> assert false
    | Fonction x -> AT_Fonction (type_fonction x)

let rec type_ast p = 
    if p.includes then includes := true;

    List.map type_decl p.program;
