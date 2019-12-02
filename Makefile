all:
	git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{%h}' > gitrevisioninfo.sty
	latexmk -xelatex LIVRO.tex
clean:
	-rm LIVRO.[0-9]* *aux *log *tui *toc *.4ct *.4tc *.html *.css *.dvi *.epub *.lg *.ncx *.xref *.tmp *.idv *.opf LIVRO.pdf *.fdb_latexmk *.fls
