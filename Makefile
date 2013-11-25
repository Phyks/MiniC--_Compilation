CMO=lexer.cmo lexhack.cmo parser.cmo main.cmo
GENERATED = lexer.ml parser.ml parser.mli
BIN=minic++
FLAGS=-annot

all: $(BIN)
	./$(BIN) test.cpp

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

lexhack.cmo:
	ocamlc -c lexhack.ml

clean:
	rm -f *.cm[io] *.o *~ $(BIN) $(GENERATED)
	rm -f *.annot

.depend depend:$(GENERATED)
	rm -f .depend
	ocamldep *.ml *.mli > .depend

include .depend