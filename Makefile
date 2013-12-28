all: doxygen

clean: 
	-rm -rf html/

doxygen:
	java  -Djava.awt.headless=true -jar /usr/share/java/plantuml.jar -v -o ./html  "./**.(c|cpp|doc|h)"
	doxygen

gch:
	google-chrome  html/index.html &
