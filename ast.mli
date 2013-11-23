(* Syntaxe abstraite pour mini-C++ *)

(* Opérateurs binaires *)
type operateur = Eq | Neq | Lt | Leq | Gt | Geq | Plus | Minus | Times | Div | Mod | And | Or
(* Opérateurs unaires *)
type uoperateur = Ecomm | Not | UMinus | UPlus | UTimes

type incr = IncrL (* ++e *) | DecrL | IncrR | DecR

type ident = string
type tident = string
type qident = Ident of ident | Tident of tident * ident

type ast_type = Void | Int | Tident of tident

type var = Ident of ident | UTimes of var | Ecomm of var
type qvar = Qident of qident | UTimes of qvar | Ecomm of qvar

type expr = Int of int 
            | This
            | False 
            | True 
            | Null
            | Qident of qident 
            | Dot of expr * ident 
            | Arrow of expr * ident 
            | Assign of expr * expr
            | Apply of expr * (expr list)
            | Instance of tident * (expr list)
            | Incr of incr * expr
            | UOp of uoperateur * expr
            | Op of operateur * expr * expr

type expr_string = Expr of expr | String of string

type some_expr = None | Some of expr
type some_assign = None | Expr of expr | Tident of tident * (expr list)

type instruction = Nop
                   | Expr of expr
                   | Var of ast_type * var * some_assign
                   | If of expr * instruction
                   | IfElse of expr * instruction * instruction
                   | While of expr * instruction
                   | For of (expr list) * some_expr * (expr list) * instruction
                   | Bloc of instruction list
                   | Cout of expr_string list
                   | Return of some_expr

type argument = ast_type * var

type proto_ident = Qvar of ast_type * qvar | Type of tident | Herit of tident * tident
type proto = {
    ident : proto_ident; 
    args : argument list;
}

type decl_vars = ast_type * (var list)
type member = Var of decl_vars | Proto of bool * proto
type supers = None | Some of tident list
type decl_class = ident * supers * (member list)
type fonction = proto * (instruction list)
type decl = Var of decl_vars | Class of decl_class | Fonction of fonction

type program = {
    includes : bool;
    program : decl list;
}
