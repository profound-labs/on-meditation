FILE=book_main

LATEX=lualatex
BIBTEX=bibtex

LATEX_OPTS=-interaction=nonstopmode -halt-on-error

all: book

book:
	$(LATEX) $(LATEX_OPTS) $(FILE).tex;

twice:
	$(LATEX) $(LATEX_OPTS) $(FILE).tex && $(LATEX) $(LATEX_OPTS) $(FILE).tex;

view:
	evince $(FILE).pdf &

clean:
	+rm -fv $(FILE).{dvi,ps,pdf,aux,log,bbl,blg}

