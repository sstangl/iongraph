reall: clean all

all: /tmp/ion.json
	./iongraph $<
	./genpngs

clean:
	rm -f *.gv *.gv.png
