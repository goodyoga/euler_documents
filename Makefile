include Doxyfile


all: doxygen

clean: 
	-rm -rf html/

doxygen:
	for i in $(INPUT) ; do  java  -Djava.awt.headless=true -jar /usr/share/java/plantuml.jar -v -o ../euler_documents/html  "$$i/*.(c|cpp|doc|h)" ; done;
	doxygen

gch:
	google-chrome  html/index.html &
