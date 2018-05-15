MD_FILES := $(wildcard *.md)
MD_PDFS := $(MD_FILES:.md=.pdf)

all: figures $(MD_PDFS)
.PHONY: all

%.pdf : %.md
	pandoc --listings -H listings-setup.tex -H theme-setup.tex -t beamer $< -o $@

.PHONY: figures
figures:
	cd figures; make

clean:
	cd figures; make clean
	git clean -fx