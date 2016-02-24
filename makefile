all: hw5.pdf

clean:
	rm hw5.aux hw5.log hw5.tex *~

hw5.pdf: hw5.tex
	pdflatex hw5.tex
	Rscript --vanilla -e "require(extrafont);embed_fonts('hw5.pdf')"

hw5.tex:
	Rscript --vanilla -e "require(knitr);knit('hw5.rnw')"

