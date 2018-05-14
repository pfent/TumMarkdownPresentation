MD_FILES := $(wildcard *.md)
MD_PDFS := $(MD_FILES:.md=.pdf)
%.pdf : %.md
	pandoc --listings -H listings-setup.tex -H theme-setup.tex -t beamer $< -o $@

all: $(MD_PDFS)

clean:
	git clean -fx