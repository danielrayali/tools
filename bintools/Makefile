all: dec hex

dec: dec.cc
	g++ -o dec dec.cc

hex: hex.cc
	g++ -o hex hex.cc

install: all
	mkdir -p ~/.bin/
	cp dec ~/.bin/
	cp hex ~/.bin/

remove:
	rm ~/.bin/dec
	rm ~/.bin/hex

clean:
	rm -rf dec hex
