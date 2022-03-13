CUSTOM_LIBRARY_LOCATION = ../lib
COMPILE = ocamlopt -O3 -nopervasives -I $(CUSTOM_LIBRARY_LOCATION) -c

build:
	make clean

	$(COMPILE) attributes.ml
	$(COMPILE) css.ml
	$(COMPILE) nodes.ml
	$(COMPILE) cssConversions.ml
	$(COMPILE) view.ml

	ocamlopt -a -I $(CUSTOM_LIBRARY_LOCATION) attributes.cmx css.cmx nodes.cmx cssConversions.cmx view.cmx -o library.cmxa

clean:
	rm -f *.o *.a *.s *.so *.cmi *.cmx *.cmxa *.cmo *.cma