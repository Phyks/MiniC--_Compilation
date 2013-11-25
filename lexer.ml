# 5 "lexer.mll"
 
    open Lexing
    open Parser

    exception Lexing_error of string

    let keywords_tbl = ["class", CLASS;
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

# 38 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base = 
   "\000\000\225\255\226\255\093\000\173\000\183\000\209\000\230\255\
    \232\255\233\255\236\255\238\255\205\000\001\000\002\000\003\000\
    \030\000\031\000\001\000\115\000\016\000\004\000\254\255\018\000\
    \130\000\142\000\134\000\126\000\144\000\144\000\027\000\033\000\
    \141\000\136\000\133\000\133\000\137\000\151\000\156\000\145\000\
    \032\000\255\255\252\255\251\255\250\255\249\255\248\255\246\255\
    \244\255\243\255\231\255\242\255\028\001\051\001\066\001\227\255\
    \077\001\166\001\089\001\246\001\048\001\253\255\254\255\049\000\
    \255\255";
  Lexing.lex_backtrk = 
   "\255\255\255\255\255\255\030\000\027\000\027\000\026\000\255\255\
    \255\255\255\255\255\255\255\255\016\000\015\000\010\000\008\000\
    \020\000\014\000\021\000\030\000\018\000\002\000\255\255\030\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\027\000\027\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\001\000\
    \255\255";
  Lexing.lex_default = 
   "\001\000\000\000\000\000\255\255\255\255\255\255\255\255\000\000\
    \000\000\000\000\000\000\000\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\000\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\255\255\255\255\255\255\000\000\
    \255\255\255\255\255\255\255\255\062\000\000\000\000\000\255\255\
    \000\000";
  Lexing.lex_trans = 
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\021\000\022\000\000\000\000\000\021\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \021\000\016\000\003\000\023\000\021\000\010\000\018\000\044\000\
    \009\000\008\000\011\000\013\000\049\000\012\000\007\000\020\000\
    \005\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\042\000\031\000\015\000\017\000\014\000\048\000\
    \047\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\046\000\045\000\032\000\041\000\006\000\
    \064\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\024\000\019\000\057\000\057\000\055\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\056\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\053\000\
    \053\000\053\000\053\000\053\000\053\000\053\000\053\000\043\000\
    \025\000\026\000\027\000\028\000\029\000\030\000\033\000\034\000\
    \035\000\036\000\051\000\037\000\038\000\039\000\040\000\000\000\
    \002\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\050\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\000\000\000\000\000\000\052\000\
    \006\000\000\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\054\000\054\000\054\000\054\000\
    \054\000\054\000\054\000\054\000\054\000\054\000\057\000\057\000\
    \000\000\000\000\063\000\000\000\000\000\054\000\054\000\054\000\
    \054\000\054\000\054\000\053\000\053\000\053\000\053\000\053\000\
    \053\000\053\000\053\000\000\000\000\000\000\000\000\000\057\000\
    \000\000\000\000\054\000\054\000\054\000\054\000\054\000\054\000\
    \054\000\054\000\054\000\054\000\000\000\054\000\054\000\054\000\
    \054\000\054\000\054\000\054\000\054\000\054\000\054\000\054\000\
    \054\000\059\000\059\000\059\000\059\000\059\000\059\000\059\000\
    \059\000\059\000\059\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\059\000\059\000\059\000\059\000\059\000\059\000\
    \000\000\000\000\000\000\054\000\054\000\054\000\054\000\054\000\
    \054\000\057\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\059\000\059\000\059\000\059\000\059\000\059\000\
    \000\000\000\000\000\000\000\000\000\000\058\000\057\000\057\000\
    \055\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\056\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \061\000\000\000\000\000\000\000\000\000\000\000\000\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_check = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\255\255\255\255\021\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\021\000\000\000\000\000\018\000\
    \000\000\000\000\000\000\000\000\013\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\020\000\030\000\000\000\000\000\000\000\014\000\
    \015\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\016\000\017\000\031\000\040\000\000\000\
    \063\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\023\000\000\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\019\000\
    \024\000\025\000\026\000\027\000\028\000\029\000\032\000\033\000\
    \034\000\035\000\012\000\036\000\037\000\038\000\039\000\255\255\
    \000\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\012\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\255\255\255\255\255\255\005\000\
    \006\000\255\255\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\052\000\052\000\052\000\052\000\
    \052\000\052\000\052\000\052\000\052\000\052\000\056\000\056\000\
    \255\255\255\255\060\000\255\255\255\255\052\000\052\000\052\000\
    \052\000\052\000\052\000\053\000\053\000\053\000\053\000\053\000\
    \053\000\053\000\053\000\255\255\255\255\255\255\255\255\056\000\
    \255\255\255\255\054\000\054\000\054\000\054\000\054\000\054\000\
    \054\000\054\000\054\000\054\000\255\255\052\000\052\000\052\000\
    \052\000\052\000\052\000\054\000\054\000\054\000\054\000\054\000\
    \054\000\058\000\058\000\058\000\058\000\058\000\058\000\058\000\
    \058\000\058\000\058\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\058\000\058\000\058\000\058\000\058\000\058\000\
    \255\255\255\255\255\255\054\000\054\000\054\000\054\000\054\000\
    \054\000\056\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\058\000\058\000\058\000\058\000\058\000\058\000\
    \255\255\255\255\255\255\255\255\255\255\056\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\057\000\057\000\
    \057\000\057\000\057\000\057\000\057\000\057\000\059\000\059\000\
    \059\000\059\000\059\000\059\000\059\000\059\000\059\000\059\000\
    \060\000\255\255\255\255\255\255\255\255\255\255\255\255\059\000\
    \059\000\059\000\059\000\059\000\059\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\059\000\
    \059\000\059\000\059\000\059\000\059\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_base_code = 
   "";
  Lexing.lex_backtrk_code = 
   "";
  Lexing.lex_default_code = 
   "";
  Lexing.lex_trans_code = 
   "";
  Lexing.lex_check_code = 
   "";
  Lexing.lex_code = 
   "";
}

let rec token lexbuf =
    __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 61 "lexer.mll"
                            ( print_string "include"; INCLUDE )
# 283 "lexer.ml"

  | 1 ->
# 62 "lexer.mll"
           ( print_string "new_line"; newline lexbuf ; token lexbuf )
# 288 "lexer.ml"

  | 2 ->
# 63 "lexer.mll"
              ( print_string "space"; token lexbuf )
# 293 "lexer.ml"

  | 3 ->
# 64 "lexer.mll"
           ( print_string "comment"; comment lexbuf)
# 298 "lexer.ml"

  | 4 ->
# 65 "lexer.mll"
           ( print_string "||"; OR )
# 303 "lexer.ml"

  | 5 ->
# 66 "lexer.mll"
           ( print_string "&&"; AND )
# 308 "lexer.ml"

  | 6 ->
# 67 "lexer.mll"
           ( print_string "=="; EQ )
# 313 "lexer.ml"

  | 7 ->
# 68 "lexer.mll"
           ( print_string "!="; NEQ )
# 318 "lexer.ml"

  | 8 ->
# 69 "lexer.mll"
          ( print_string "LT"; LT )
# 323 "lexer.ml"

  | 9 ->
# 70 "lexer.mll"
           ( print_string "LEQ"; LEQ )
# 328 "lexer.ml"

  | 10 ->
# 71 "lexer.mll"
          ( print_string "GT"; GT )
# 333 "lexer.ml"

  | 11 ->
# 72 "lexer.mll"
           ( print_string "GEQ"; GEQ )
# 338 "lexer.ml"

  | 12 ->
# 73 "lexer.mll"
           ( print_string "INCR"; INCR )
# 343 "lexer.ml"

  | 13 ->
# 74 "lexer.mll"
           ( print_string "DECR"; DECR )
# 348 "lexer.ml"

  | 14 ->
# 75 "lexer.mll"
          ( print_string "ASSIGN"; ASSIGN )
# 353 "lexer.ml"

  | 15 ->
# 76 "lexer.mll"
          ( print_string "PLUS"; PLUS )
# 358 "lexer.ml"

  | 16 ->
# 77 "lexer.mll"
          ( print_string "MINUS"; MINUS )
# 363 "lexer.ml"

  | 17 ->
# 78 "lexer.mll"
          ( print_string "TIMES"; TIMES )
# 368 "lexer.ml"

  | 18 ->
# 79 "lexer.mll"
          ( print_string "DIV"; DIV )
# 373 "lexer.ml"

  | 19 ->
# 80 "lexer.mll"
          ( print_string "MOD"; MOD )
# 378 "lexer.ml"

  | 20 ->
# 81 "lexer.mll"
          ( print_string "NOT"; NOT )
# 383 "lexer.ml"

  | 21 ->
# 82 "lexer.mll"
          ( print_string "ECOM"; ECOMM )
# 388 "lexer.ml"

  | 22 ->
# 83 "lexer.mll"
          ( print_string "("; LPAREN )
# 393 "lexer.ml"

  | 23 ->
# 84 "lexer.mll"
          ( print_string ")"; RPAREN )
# 398 "lexer.ml"

  | 24 ->
# 85 "lexer.mll"
           ( print_string "->"; ARROW )
# 403 "lexer.ml"

  | 25 ->
# 86 "lexer.mll"
          ( print_string "."; DOT )
# 408 "lexer.ml"

  | 26 ->
let
# 87 "lexer.mll"
               s
# 414 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 88 "lexer.mll"
        ( id_or_kwd s )
# 418 "lexer.ml"

  | 27 ->
let
# 89 "lexer.mll"
                i
# 424 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 89 "lexer.mll"
                  ( print_string "int"; INT (int_of_string i) )
# 428 "lexer.ml"

  | 28 ->
let
# 90 "lexer.mll"
                s
# 434 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 90 "lexer.mll"
                  ( print_string "string"; STRING s )
# 438 "lexer.ml"

  | 29 ->
# 91 "lexer.mll"
          ( print_string "eof"; EOF )
# 443 "lexer.ml"

  | 30 ->
let
# 92 "lexer.mll"
           c
# 449 "lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 92 "lexer.mll"
             ( raise (Lexing_error ("Caractère illégal : " ^ String.make 1 c)) )
# 453 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; __ocaml_lex_token_rec lexbuf __ocaml_lex_state

and comment lexbuf =
    __ocaml_lex_comment_rec lexbuf 60
and __ocaml_lex_comment_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 95 "lexer.mll"
           ( token lexbuf )
# 464 "lexer.ml"

  | 1 ->
# 96 "lexer.mll"
        ( comment lexbuf )
# 469 "lexer.ml"

  | 2 ->
# 97 "lexer.mll"
          ( raise (Lexing_error "Commentaire non terminé.") )
# 474 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; __ocaml_lex_comment_rec lexbuf __ocaml_lex_state

;;

# 99 "lexer.mll"
 
    let p = token (Lexing.from_channel (open_in "test.cpp"))

# 484 "lexer.ml"
