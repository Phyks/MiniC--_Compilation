CMO=ast_typing.cmo lexhack.cmo lexer.cmo parser.cmo typer.cmo mips.cmo compiler.cmo main.cmo
GENERATED = lexer.ml parser.ml parser.mli
BIN=minic++
FLAGS=-annot

$(BIN):$(CMO)
	ocamlc $(FLAGS) -o $(BIN) $(CMO)

.SUFFIXES: .mli .ml .cmi .cmo .mll .mly

.mli.cmi:
	ocamlc $(FLAGS) -c  $<

.ml.cmo:
	ocamlc $(FLAGS) -c  $<

.mll.ml:
	ocamllex $<

.mly.ml:
	menhir -v $<

.mly.mli:
	ocamlyacc -v $<

ast_typing.cmo:
	ocamlc -c ast_typing.ml

clean:
	rm -f *.cm[io] *.o *~ $(BIN) $(GENERATED)
	rm -f *.annot
	rm -f *.automaton
	rm -f *.conflicts

.depend depend:$(GENERATED)
	rm -f .depend
	ocamldep *.ml *.mli > .depend

include .depend
