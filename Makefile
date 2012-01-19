# Build all known outputs by default.
all: gv png pdf

# Convenient shorthand.
repng: clean png
repdf: clean pdf

gv: /tmp/ion.json
	./iongraph $<
png: gv
	./genpngs
pdf: gv
	./genpdfs

clean:
	rm -f *.gv *.gv.png *.pdf
