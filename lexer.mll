(* Analyseur lexical pour MiniC++ *)

{
    open Lexing
    open Parser
    open Lexhack

    exception Lexing_error of string

    let keywords_tbl = ["class", CLASS;
                        "else", ELSE;
                        "false", FALSE;
                        "for", FOR; 
                        "if", IF;
                        "int", TINT;
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
            try Hashtbl.find keywords s with Not_found -> begin
                if List.mem s !(Lexhack.types_lexhack) then
                    TIDENT s
                else
                    IDENT s
            end

    let newline lexbuf =
        let pos = lexbuf.lex_curr_p in
        lexbuf.lex_curr_p <- 
            { pos with pos_lnum = pos.pos_lnum + 1; pos_bol = pos.pos_cnum }

    let localstring = ref ""
}

let chiffre = ['0'-'9']
let alpha = ['a'-'z' 'A'-'Z']
let ident = (alpha | '_') (alpha | chiffre | '_')*

let chiffre_octal = ['0'-'7']
let chiffre_hexa = ['0'-'9' 'a'-'f' 'A'-'F']

let caractere = ['\032'-'\033' '\035'-'\091' '\093'-'\127']
                | '\\' '\\' | '\\' '\"' | '\\' 'n' | '\\' 't'
                | '\\' 'x' chiffre_hexa chiffre_hexa
let chaine = '\"' caractere* '\"'

let space = [' ' '\t']

rule token = parse
    | "#include <iostream>" { INCLUDE }
    | '\n' { newline lexbuf ; token lexbuf }
    | space+  { token lexbuf }
    | "std::cout" { COUT }
    | "std::endl" { ENDL }
    | "/*" { comment lexbuf }
    | "//" { comment_inline lexbuf }
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
    | '0' { INT 0 }
    | (['1'-'9'] chiffre*) as i { INT (int_of_string i) }
    | '0' (chiffre_octal+ as i) { INT (int_of_string ("0o"^i)) }
    | ('0' 'x' chiffre_hexa+ as i) { INT (int_of_string i) }
    | '"' { chaine lexbuf }
    | eof { EOF }
    | _ as c { raise (Lexing_error ("Caractère illégal : " ^ String.make 1 c)) }

and chaine = parse
    | '"' { let tmp = !localstring in localstring := ""; STRING tmp }
    | ['\032'-'\033' '\035'-'\091' '\093'-'\127'] as c { localstring := !localstring ^ (String.make 1 c) ; chaine lexbuf }
    | '\\' '\\' { localstring := !localstring ^ "\\" ; chaine lexbuf }
    | '\\' '\"' { localstring := !localstring ^ "\"" ; chaine lexbuf }
    | '\\' 'n' { localstring := !localstring ^ "\n" ; chaine lexbuf }
    | '\\' 't' { localstring := !localstring ^ "\t" ; chaine lexbuf }
    | '\\' 'x' (chiffre_hexa chiffre_hexa as hex) { localstring := !localstring ^ (String.make 1 (char_of_int (int_of_string ("0x"^hex)))); chaine lexbuf }
    | eof { raise (Lexing_error "Unterminated string") }
    | _ as c { raise (Lexing_error (Printf.sprintf "Character %s forbidden :" (if c = '\n' then "newline" else String.make 1 c))) }


and comment = parse
    | "*/" { token lexbuf }
    | _ { comment lexbuf }
    | eof { raise (Lexing_error "Commentaire non terminé.") }

and comment_inline = parse
    | '\n' { token lexbuf }
    | _ { comment_inline lexbuf }
