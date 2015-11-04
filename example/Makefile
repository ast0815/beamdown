all: Presentation.pdf

Presentation.pdf: Slides.tex
	pdflatex Presentation.tex
	pdflatex Presentation.tex
	pdflatex Presentation.tex

Slides.tex: Slides.md
	../beamdown Slides.md > Slides.tex
