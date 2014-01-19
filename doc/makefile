OUTFILE=out/sprawozdanie.pdf

DOT_SOURCES=$(wildcard *dot)
FIGURES=$(DOT_SOURCES:%.dot=out/%.pdf)

$(OUTFILE): sprawozdanie.tex $(FIGURES)
	pdflatex -output-directory $(dir $@) $<
	pdflatex -output-directory $(dir $@) $<

view: $(OUTFILE)
	chronic okular $^ &

edit:
	chronic kate makefile sprawozdanie.tex *.dot &

spellcheck:
	aspell --mode=tex --lang=pl --encoding=utf-8 check *.tex
	-egrep 'FIXME|TODO' *.tex *.m

clean:
	-rm -rv out/*

out/%.pdf: %.dot
	dot -Tps "$^" | ps2pdf - "$@"
	pdfcrop "$@" "$@"

.PHONY: edit view spellcheck clean
