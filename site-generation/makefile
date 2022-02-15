CUSTOM_LIBRARY_LOCATION = lib
COMPILE = ocamlopt -O3 -nopervasives -I $(CUSTOM_LIBRARY_LOCATION) -c

build:
	$(COMPILE) attributes.ml
	$(COMPILE) css.ml
	$(COMPILE) nodes.ml
	$(COMPILE) cssConversions.ml
	$(COMPILE) view.ml
	$(COMPILE) blogPost.ml
	$(COMPILE) postContent.ml
	$(COMPILE) rss.ml
	$(COMPILE) main.ml

	ocamlopt -I $(CUSTOM_LIBRARY_LOCATION) $(CUSTOM_LIBRARY_LOCATION)/library.cmxa attributes.cmx css.cmx nodes.cmx cssConversions.cmx view.cmx blogPost.cmx postContent.cmx rss.cmx main.cmx -o program

mostlyclean:
	rm -f *.o *.a *.s *.cmi *.cmx *.cmxa *.cmo *.cma

clean:
	rm -f *.o *.a *.s *.cmi *.cmx *.cmxa *.cmo *.cma program

make install:
	make build
	make mostlyclean

run:
	./program