CUSTOM_LIBRARY_LOCATION = lib
DSL_LOCATION = html-dsl
COMPILE = ocamlopt -O3 -nopervasives -I $(CUSTOM_LIBRARY_LOCATION) -I $(DSL_LOCATION) -c

site:
	make install
	make run

build:
	$(COMPILE) stylesheet.ml
	$(COMPILE) blogPost.ml
	$(COMPILE) posts.ml
	$(COMPILE) rss.ml
	$(COMPILE) main.ml

	ocamlopt -I $(DSL_LOCATION) -I $(CUSTOM_LIBRARY_LOCATION) $(CUSTOM_LIBRARY_LOCATION)/library.cmxa $(DSL_LOCATION)/library.cmxa stylesheet.cmx blogPost.cmx posts.cmx rss.cmx main.cmx -o program

mostlyclean:
	rm -f *.o *.a *.s *.cmi *.cmx *.cmxa *.cmo *.cma

clean:
	rm -f *.o *.a *.s *.cmi *.cmx *.cmxa *.cmo *.cma program

make install:
	make build
	make mostlyclean

run:
	./program