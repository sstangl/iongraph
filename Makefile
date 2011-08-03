all:
	./iongraph /tmp/ion.json
	./genpngs

clean:
	rm -f *.gv *gv.png
