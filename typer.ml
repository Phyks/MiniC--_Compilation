(* Typage pour MiniC++ *)
open Ast
open Ast_typing

exception Error of string

let includes = ref false
let is_main_here = ref false


let types_ast_to_atast = function
| Void -> ATVoid
| Int -> ATInt
| ASTTident y -> ATASTTident y

let type_qident = function
    | Ident x -> ATIdent x
    | _ -> assert false
    (* TODO *)

let type_var x = 
    assert false
    (* TODO *)

let type_qvar = function
    | Qident x -> ATQident (type_qident x)
    | _ -> assert false
    (* TODO *)

let type_instruction_content = function
    | Nop -> ATNop
    | _ -> assert false
    (* TODO *)

let type_instruction x = 
    {
        at_instruction_content = type_instruction_content x.instruction_content;
        at_instruction_loc = x.instruction_loc
    }

let type_proto_ident = function
    | Qvar (x, y) -> ATQvar (types_ast_to_atast x, type_qvar y)
    | _ -> assert false
    (* TODO *)

let type_args x =
    (types_ast_to_atast (fst x)), type_var (snd x)

let type_proto x =
    {
        at_ident = type_proto_ident x.ident;
        at_args = List.map type_args x.args;
        at_proto_loc = x.proto_loc;
    }

let type_bloc x =
    let bloc_content = match x.bloc_content with
    | Bloc_content bc -> bc
    in
    {
        at_bloc_content = ATBloc_content (List.map type_instruction bloc_content);
        at_bloc_loc = x.bloc_loc;
    }

let type_fonction x =
    {
        at_fonction_content = type_proto (fst x.fonction_content), type_bloc (snd x.fonction_content);
        at_fonction_loc = x.fonction_loc;
    }

let type_decl = function
    | DVar x -> assert false
    | Class x -> assert false
    | Fonction x -> AT_Fonction (type_fonction x)

let rec type_ast p = 
    if p.includes then includes := true;

    {
        at_program = List.map type_decl p.program;
        at_program_loc = p.program_loc;
    }
