(* Analyseur lexical pour MiniC++ *)

(* Colon, semicolon, comma, COUT etc *)

{
    open Lexing
    open Parser

    exception Lexing_error of string

    let keywords_tbl = ["std::cout", COUT;
                        "class", CLASS;
                        "else", ELSE;
                        "false", FALSE;
                        "for", FOR; 
                        "if", IF;
                        "int", TINT; (* TODO : Delete and put in lexer hack *)
                        "new", NEW;
                        "NULL", NULL;
                        "public", PUBLIC;
                        "return", RETURN;
                        "this", THIS;
                        "true", TRUE;
                        "virtual", VIRTUAL;
                        "void", VOID;
                        "while", WHILE;]

    let id_or_kwd = 
        let keywords = Hashtbl.create 14 in
        List.iter (fun (s, t) -> Hashtbl.add keywords s t) keywords_tbl;
        fun s -> 
            try Hashtbl.find keywords s with Not_found -> 
                (*try List.assoc s !types_lexhack with Not_found ->*)
                    IDENT s

    let newline lexbuf =
        let pos = lexbuf.lex_curr_p in
        lexbuf.lex_curr_p <- 
            { pos with pos_lnum = pos.pos_lnum + 1; pos_bol = pos.pos_cnum }
}

let chiffre = ['0'-'9']
let alpha = ['a'-'z' 'A'-'Z']
let ident = (alpha | '_') (alpha | chiffre | '_')*

let chiffre_octal = ['0'-'7']
let chiffre_hexa = ['0'-'9' 'a'-'f' 'A'-'F']

let entier = '0' 
             | ['1'-'9'] chiffre* 
             | '0' chiffre_octal+
             | '0' 'x' chiffre_hexa+

let caractere = ['\032'-'\033' '\035'-'\091' '\093'-'\127']
                | '\\' '\\' | '\\' '\"' | '\\' '\n' | '\\' '\t'
                | '\\' 'x' chiffre_hexa chiffre_hexa
let chaine = '\"' caractere* '\"'

let space = [' ' '\t']

rule token = parse
    | "#include <iostream>" { INCLUDE }
    | '\n' { newline lexbuf ; token lexbuf }
    | space+  { token lexbuf }
    | "/*" { comment lexbuf}
    | "||" { OR }
    | "&&" { AND }
    | "==" { EQ }
    | "!=" { NEQ }
    | '<' { LT }
    | "<=" { LEQ }
    | '>' { GT }
    | ">=" { GEQ }
    | "++" { INCR }
    | "--" { DECR }
    | '=' { ASSIGN }
    | '+' { PLUS }
    | '-' { MINUS }
    | '*' { TIMES }
    | '/' { DIV }
    | '%' { MOD }
    | '!' { NOT }
    | '&' { ECOMM }
    | '(' { LPAREN }
    | ')' { RPAREN }
    | "->" { ARROW }
    | '.' { DOT }
    | ';' { SEMICOLON }
    | ':' { COLON }
    | ',' { COMMA }
    | "<<" { IN }
    | '{' { LBRACE }
    | '}' { RBRACE }
    | ident as s
        { id_or_kwd s }
    | entier as i { INT (int_of_string i) }
    | chaine as s { STRING s }
    | eof { EOF }
    | _ as c { raise (Lexing_error ("Caractère illégal : " ^ String.make 1 c)) }

and comment = parse
    | "*/" { token lexbuf }
    | _ { comment lexbuf }
    | eof { raise (Lexing_error "Commentaire non terminé.") }
