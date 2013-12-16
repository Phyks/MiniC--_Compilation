(* Syntaxe abstraite post-analyse sémantique pour mini-C++ *)
open Ast

type at_loc = Lexing.position * Lexing.position

(* Opérateurs binaires *)
type at_operateur = ATEq | ATNeq | ATLt | ATLeq | ATGt | ATGeq | ATPlus | ATMinus | ATTimes | ATDiv | ATMod | ATAnd | ATOr
(* Opérateurs unaires *)
type at_uoperateur = ATEComm | ATNot | ATUMinus | ATUPlus | ATUTimes

type at_incr = ATIncrL (* ++e *) | ATDecrL | ATIncrR | ATDecrR

type at_ident = string
type at_tident = string
type at_qident = ATIdent of at_ident | ATTident of at_tident * at_ident

type at_ast_type = ATVoid | ATInt | ATASTTident of at_tident

type at_var = ATVIdent of at_ident | ATVUTimes of at_var | ATVEComm of at_var
type at_qvar = ATQident of at_qident | ATQUTimes of at_qvar | ATQEComm of at_qvar

type at_expr = ATEInt of int 
            | ATEThis
            | ATEFalse 
            | ATETrue 
            | ATENull
            | ATEQident of at_qident 
            | ATDot of at_expr * at_ident 
            | ATArrow of at_expr * at_ident 
            | ATAssign of at_expr * at_expr
            | ATApply of at_expr * (at_expr list)
            | ATInstance of at_tident * (at_expr list)
            | ATIncr of at_incr * at_expr
            | ATUOp of at_uoperateur * at_expr
            | ATOp of at_operateur * at_expr * at_expr

type at_expr_string = ATExpr of at_expr | ATString of string

type at_some_expr = at_expr option
type at_some_assign = ATNoAssign | ATSAExpr of at_expr | ATSATident of at_tident * (at_expr list)

type at_instruction = ATNop
                   | ATIExpr of at_expr
                   | ATIVar of at_var * at_some_assign
                   | ATIf of at_expr * at_instruction
                   | ATIfElse of at_expr * at_instruction * at_instruction
                   | ATWhile of at_expr * at_instruction
                   | ATFor of at_expr list * at_some_expr * at_expr list * at_instruction
                   | ATIBloc of at_bloc
                   | ATCout of at_expr_string list
                   | ATReturn of at_some_expr
               and
               at_bloc = at_instruction list

type at_argument = at_ast_type * at_var

type at_proto_ident = ATQvar of at_ast_type * at_qvar | ATType of at_tident | ATHerit of at_tident * at_tident
type at_proto = {
    at_ident : at_proto_ident; 
    at_args : at_argument list;
}

type at_decl_vars = { at_ast_type: at_ast_type; at_var: (at_var list)}
type at_member = ATMVar of at_decl_vars | ATProto of bool * at_proto
type at_supers = (at_tident list) option
type at_decl_class = { at_ident: at_ident; at_supers: at_supers; at_member: (at_member list)}
type at_locals = (at_var, int) Hashtbl.t
type at_fonction = { at_proto: at_proto; at_bloc: at_bloc; at_locals: at_locals }
type at_decl = AT_DVar of at_decl_vars | AT_Class of decl_class | AT_Fonction of at_fonction

type at_program = at_decl list
