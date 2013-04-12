FILE=book_main

LATEX=lualatex
BIBTEX=bibtex

LATEX_OPTS=-interaction=nonstopmode -halt-on-error

all: book

book:
	$(LATEX) $(LATEX_OPTS) $(FILE).tex;

twice:
	$(LATEX) $(LATEX_OPTS) $(FILE).tex && $(LATEX) $(LATEX_OPTS) $(FILE).tex;

print-specs:
	org-ruby print-specs.org --translate textile | pandoc --from=textile --to=odt -o print-specs.odt;

clean:
	+rm -fv $(FILE).{dvi,ps,pdf,aux,log,bbl,blg}

