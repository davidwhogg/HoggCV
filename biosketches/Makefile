RM = /bin/rm -fv

.SUFFIXES: .tex .dvi .ps .pdf

# ALLFILES = $(patsubst %.tex,%.pdf,$(wildcard *.tex))
all: biosketch_hogg_lss.pdf

.tex.pdf:
	pdflatex $*
	bash -c " ( grep Rerun $*.log && pdflatex $* ) || echo noRerun "
	bash -c " ( grep Rerun $*.log && pdflatex $* ) || echo noRerun "

clean:
	$(RM) *.log *.aux *.dvi *.toc *.bbl *.blg

spotless: clean
	$(RM) *.ps *.pdf
