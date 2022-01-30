STANDARD_FLAGS = -O3
STANDARD_COMPILE = ocamlopt $(STANDARD_FLAGS) -nopervasives -c
LIB_NAME = library

build:
	# fromStdlib manages things that need to be exposed from the standard library
	ocamlopt $(STANDARD_FLAGS) -c fromStdlib.mli fromStdlib.ml

	# types and functions that should be opened module wide
	ocamlopt $(STANDARD_FLAGS) -nopervasives -c general.mli general.ml

	# the following files make up the core custom standard library code
	$(STANDARD_COMPILE) fatal.mli fatal.ml
	$(STANDARD_COMPILE) int.mli int.ml
	$(STANDARD_COMPILE) float.mli float.ml
	$(STANDARD_COMPILE) option.mli option.ml
	$(STANDARD_COMPILE) stack.mli stack.ml
	$(STANDARD_COMPILE) list.mli list.ml
	$(STANDARD_COMPILE) map.mli map.ml
	$(STANDARD_COMPILE) queue.mli queue.ml
	$(STANDARD_COMPILE) set.mli set.ml
	$(STANDARD_COMPILE) tree.mli tree.ml
	$(STANDARD_COMPILE) string.mli string.ml
	$(STANDARD_COMPILE) char.mli char.ml
	$(STANDARD_COMPILE) bool.mli bool.ml
	$(STANDARD_COMPILE) terminal.mli terminal.ml

	ocamlopt -a fromStdlib.cmx general.cmx fatal.cmx int.cmx float.cmx option.cmx stack.cmx list.cmx map.cmx queue.cmx set.cmx tree.cmx string.cmx char.cmx bool.cmx terminal.cmx -o $(LIB_NAME).cmxa

clean:
	rm -f *.o *.a *.s *.cmi *.cmx *.cmxa *.cmo *.cma
	