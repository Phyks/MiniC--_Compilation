(* Production de code *)

open Mips

let program x = 
    {
        text = nop;
        data = label "newline"
               ++ asciiz "\n";
    }
