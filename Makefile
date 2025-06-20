RM = /bin/rm -fv

.SUFFIXES: .tex .dvi .ps .pdf

# ALLFILES = $(patsubst %.tex,%.pdf,$(wildcard *.tex))
all: hogg_cv.pdf pedagogical.pdf

.tex.pdf:
	pdflatex $*
	bash -c " ( grep Rerun $*.log && pdflatex $* ) || echo noRerun "
	bash -c " ( grep Rerun $*.log && pdflatex $* ) || echo noRerun "

clean:
	$(RM) *.log *.aux *.dvi *.toc *.bbl *.blg

spotless: clean
	$(RM) *.ps *.pdf
