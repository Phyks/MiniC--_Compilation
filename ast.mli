(* Syntaxe abstraite pour mini-C++ *)

type loc = Lexing.position * Lexing.position

(* Opérateurs binaires *)
type operateur = Eq | Neq | Lt | Leq | Gt | Geq | Plus | Minus | Times | Div | Mod | And | Or
(* Opérateurs unaires *)
type uoperateur = EComm | Not | UMinus | UPlus | UTimes

type incr = IncrL (* ++e *) | DecrL | IncrR | DecrR

type ident = string
type tident = string
type qident = Ident of ident | Tident of tident * ident

type ast_type = Void | Int | Tident of tident

type var = Ident of ident | VUTimes of var | VEComm of var
type qvar = Qident of qident | QUTimes of qvar | QEComm of qvar

type expr = EInt of int 
            | EThis
            | EFalse 
            | ETrue 
            | ENull
            | EQident of qident 
            | Dot of expr * ident 
            | Arrow of expr * ident 
            | Assign of expr * expr
            | Apply of expr * (expr list)
            | Instance of tident * (expr list)
            | Incr of incr * expr
            | UOp of uoperateur * expr
            | Op of operateur * expr * expr

type expr_string = Expr of expr | String of string

type some_expr = expr option
type some_assign = NoAssign | SAExpr of expr | Tident of tident * (expr list)

type instruction_content = Nop
                   | IExpr of expr
                   | IVar of ast_type * var * some_assign
                   | If of expr * instruction
                   | IfElse of expr * instruction * instruction
                   | While of expr * instruction
                   | For of expr list * some_expr * expr list * instruction
                   | IBloc of bloc
                   | Cout of expr_string list
                   | Return of some_expr
               and
               bloc_content = Bloc_content of instruction list
               and
               instruction = { instruction_content : instruction_content; instruction_loc : loc }
               and
               bloc = { bloc_content : bloc_content; bloc_loc : loc }

type argument = ast_type * var

type proto_ident = Qvar of ast_type * qvar | Type of tident | Herit of tident * tident
type proto = {
    ident : proto_ident; 
    args : argument list;
    proto_loc : loc
}

type decl_vars = { decl_vars_content : ast_type * (var list); decl_vars_loc : loc }
type member = MVar of decl_vars | Proto of bool * proto
type supers = (tident list) option
type decl_class = { decl_class_content : ident * supers * (member list); decl_class_loc : loc }
type fonction = { fonction_content : proto * bloc; fonction_loc : loc }
type decl = DVar of decl_vars | Class of decl_class | Fonction of fonction

type program = {
    includes : bool;
    program : decl list;
    program_loc : loc;
}
