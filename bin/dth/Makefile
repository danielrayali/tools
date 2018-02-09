all: dth htd

dth: dth.cc
	g++ -o dth dth.cc

htd: htd.cc
	g++ -o htd htd.cc

install: all
	mkdir -p ~/.bin/
	cp dth ~/.bin/
	cp htd ~/.bin/
	echo -n "export PATH=\"$$" >> ~/.bashrc
	echo "PATH:~/.bin/\"" >> ~/.bashrc

remove:
	rm ~/.bin/dth
	rm ~/.bin/htd

clean:
	rm -rf dth htd
