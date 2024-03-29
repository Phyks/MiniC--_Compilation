(* Fichier principal du compilateur MiniC++  *)

(* Projet de "Langages de programmation et \ *)
(*                              Compilation" *)
(* ========================================= *)
(*                              Lucas Verney *)
(* ========================================= *)

open Format
open Lexing

(* Option de compilation, pour s'arr�ter � l'issue du parser *)
let parse_only = ref false
let type_only = ref false

(* Noms des fichiers source et destination *)
let ifile = ref ""
let ofile = ref ""

let set_file f s = f := s

(* Les options du compilateur que l'on affiche en tapant minic++ --help *)
let options =
  [("--parse-only", Arg.Set parse_only,
                    "  Pour ne faire que la phase d'analyse syntaxique");
   ("--type-only", Arg.Set type_only, "  Pour ne faire que la phase de typage statique")
  ]

let usage = "usage: minic++ [option] file.cpp"

(* Localise une erreur en indiquant la ligne et la colonne *)
let localisation pos =
  let l = pos.pos_lnum in
  let c = pos.pos_cnum - pos.pos_bol + 1 in
  eprintf "File \"%s\", line %d, characters %d-%d:\n" !ifile l (c-1) c

let () =
  (* Parsing de la ligne de commande *)
  Arg.parse options (set_file ifile) usage;

  (* On v�rifie que le nom du fichier source a bien �t� indiqu� *)
  if !ifile = "" then begin eprintf "Aucun fichier � compiler\n@?"; exit 2 end;

  (* Ce fichier doit avoir l'extension .cpp *)
  if not (Filename.check_suffix !ifile ".cpp") then begin
    eprintf "Le fichier d'entr�e %s doit avoir l'extension .cpp\n@?" !ifile;
    Arg.usage options usage;
    exit 2
  end;

  (* Ouverture du fichier source en lecture *)
  let f = try open_in !ifile with Sys_error msg -> eprintf "Le fichier source %s n'existe pas.\n@?" !ifile; exit 2 in

  (* Cr�ation d'un tampon d'analyse lexicale *)
  let buf = Lexing.from_channel f in

  try
      (* Parsing: la fonction  Parser.fichier transforme le tampon lexical en un 
         arbre de syntaxe abstraite si aucune erreur (lexicale ou syntaxique) 
         n'est d�tect�e.
         La fonction Lexer.token est utilis�e par Parser.fichier pour obtenir 
         le prochain token. *)
      let p = Parser.fichier Lexer.token buf in
      close_in f;

      (* On s'arr�te ici si on ne veut faire que le parsing *)
      if !parse_only then exit 0;

      (* Typage *)
      let p_type = Typer.type_ast p in

      (* On s'arr�te ici si on ne veut faire que le typage *)
      if !type_only then exit 0;

      (* Production de code *)
      let mips = Compiler.program p_type in

      Mips.print_in_file ((Filename.chop_suffix !ifile ".cpp")^".s") mips
  with
    | Lexer.Lexing_error c -> 
        (* Erreur lexicale. On r�cup�re sa position absolue et 
           on la convertit en num�ro de ligne *)
        localisation (Lexing.lexeme_start_p buf);
        eprintf "Erreur dans l'analyse lexicale : %s@." c;
        exit 1
    | Parser.Error -> 
        (* Erreur syntaxique. On r�cup�re sa position absolue et on la 
           convertit en num�ro de ligne *)
        localisation (Lexing.lexeme_start_p buf);
        eprintf "Erreur dans l'analyse syntaxique@.";
        exit 1
    | Typer.Error (e, pos) ->
        (* Erreur de typage. On r�cup�re sa position absolue et on la
         * convertit en num�ro de ligne *)
        localisation pos;
        eprintf "Erreur durant le typage : %s@." e;
        exit 1
