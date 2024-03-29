(* Syntaxe abstraite post-analyse sémantique pour mini-C++ *)
open Ast

type at_loc = Lexing.position * Lexing.position

type at_var_pos = Pos of int | Global_var_ref of string | Arg_ref of int (* Pour les références locales pour des variables globales *)

(* Opérateurs binaires *)
type at_operateur = ATEq | ATNeq | ATLt | ATLeq | ATGt | ATGeq | ATPlus | ATMinus | ATTimes | ATDiv | ATMod | ATAnd | ATOr
(* Opérateurs unaires *)
type at_uoperateur = ATEComm | ATNot | ATUMinus | ATUPlus | ATUTimes

type at_incr = ATIncrL (* ++e *) | ATDecrL | ATIncrR | ATDecrR

type at_ident = string
type at_tident = string
type at_qident = ATIdent of at_ident | ATTident of at_tident * at_ident

type at_ast_type = ATNull | ATVoid | ATInt | ATClass of at_tident | ATPointer of at_ast_type

type at_var = ATVIdent of at_ident | ATVUTimes of at_var | ATVEComm of at_var
type at_qvar = ATQident of at_qident | ATQUTimes of at_qvar | ATQEComm of at_qvar

type at_expr = ATEInt of int 
            | ATEThis of at_tident
            | ATENull
            | ATEQident of at_qident * bool (* Bool is true for locals *)
            | ATDot of at_expr * at_ident 
            | ATAssign of at_expr * at_expr
            | ATApply of at_ident * ((at_expr*bool)list) * int * bool (* Bool is true if passed by reference, int is arguments size on stack, last bool is to know wether to pass this or not *)
            | ATInstance of at_tident * (at_expr list) * int (* int is mem space necessary *)
            | ATIncr of at_incr * at_expr
            | ATUOp of at_uoperateur * at_expr
            | ATOp of at_operateur * at_expr * at_expr

type at_expr_string = ATExpr of at_expr | ATString of string

type at_some_expr = at_expr option
type at_some_assign = ATNoAssign | ATSAExpr of at_expr | ATSATident of at_tident * (at_expr list)
and at_proto_ident = ATQvar of at_ast_type * at_qvar | ATType of at_tident | ATHerit of at_tident * at_tident
and at_argument = at_var * at_ast_type

type at_locals = (at_var, at_ast_type * (at_var_pos * int)) Hashtbl.t
type at_class_fields = { name: at_ident; fields: (at_var, (at_ast_type * (int * int))) Hashtbl.t; methods: (at_ident, (bool * (at_argument list * at_proto_ident))) Hashtbl.t }
type at_objects = (at_var, at_class_fields) Hashtbl.t

type at_instruction = ATNop
                   | ATIExpr of at_expr
                   | ATIVar of at_var * at_some_assign
                   | ATTVar of at_var * at_some_assign * bool (* bool for constructor *)
                   | ATIfElse of at_expr * at_instruction * at_instruction * at_locals * at_objects * int (* int is frame size *)
                   | ATWhile of at_expr * at_instruction * at_locals * at_objects * int
                   | ATFor of at_expr list * at_expr * at_expr list * at_instruction * at_locals * at_objects * int
                   | ATIBloc of at_bloc * at_locals * at_objects * int
                   | ATCout of at_expr_string list
                   | ATReturn of (at_some_expr * at_ident) (* at_ident is function name *)
               and
               at_bloc = at_instruction list


and at_proto = {
    at_ident_proto : at_proto_ident; 
    at_args : at_argument list;
}

and at_decl_vars = (at_var * at_ast_type) list
and at_member = ATMVar of at_decl_vars | ATProto of bool * at_proto
and at_supers = (at_tident list) option
and at_decl_class = { at_ident_class: at_ident; at_supers: at_supers; at_member: (at_member list)}
and at_fonction = { at_proto: at_proto; at_bloc: at_bloc; at_locals: at_locals; at_objects: at_objects; at_frame_size: int }
and at_decl = AT_DVar of at_decl_vars | AT_Class of at_decl_class | AT_Fonction of at_fonction

and at_program = at_decl list
