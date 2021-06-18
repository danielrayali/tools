all: dec hex

dec: dec.cc
	g++ -o dec dec.cc

hex: hex.cc
	g++ -o hex hex.cc

install: all
	mkdir -p ~/.local/bin
	cp dec ~/.local/bin/
	cp hex ~/.local/bin/

remove:
	rm ~/.local/bin/dec
	rm ~/.local/bin/hex

clean:
	rm -rf dec hex
