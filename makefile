all: hw5.pdf

clean:
	rm *.aux *.log *.tex *~

hw5.pdf: hw5.tex
	pdflatex hw5.tex
	Rscript --vanilla -e "require(extrafont);embed_fonts('hw5.pdf')"

hw5.tex:
	Rscript --vanilla -e "require(knitr);knit('hw5.rnw')"

