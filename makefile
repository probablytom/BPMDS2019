thursday:
	pdflatex Thursday_take
	bibtex   Thursday_take
	pdflatex Thursday_take
	pdflatex Thursday_take
	rm *.aux *.log
	make wc

paper:
	pdflatex essay.tex
	pdflatex essay.tex
	pdflatex essay.tex
	rm *.aux *.log

wc:
	pdftotext Thursday_take.pdf - | wc -w

