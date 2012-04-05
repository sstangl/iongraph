# Build all known outputs by default.
all: gv png pdf

# Convenient shorthand.
repng: clean png
repdf: clean pdf
refinal: clean final

# Only generate the final (MIR, LIR) for each function.
final: /tmp/ion.json
	./iongraph --final $<
	./genpngs

gv: /tmp/ion.json
	./iongraph $<
png: gv
	./genpngs
pdf: gv
	./genpdfs

clean:
	rm -f *.gv *.gv.png *.pdf
