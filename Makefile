# Copyright 2013,2014 goodyoga.  All rights Reserved.

include Doxyfile.INPUT


all: doxygen

clean: 
	-rm -rf html/

doxygen:
	for i in $(INPUT) ; do  java  -Djava.awt.headless=true -jar /usr/share/java/plantuml.jar -v -o ../euler_documents/html  "$$i/*.(c|cpp|doc|h)" ; done;
	/usr/bin/doxygen

gch:
	google-chrome  html/index.html &
