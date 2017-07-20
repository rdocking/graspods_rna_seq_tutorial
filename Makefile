#!/usr/bin/make -rRf

all: report

# Specify the bash shell
SHELL := /bin/bash -o pipefail

##============================================================================
## Targets to build reports using rmarkdown::render.
## Will knit all .rmd files in /report into html
##============================================================================

REPORTDIR = report

SRC = $(wildcard $(REPORTDIR)/*.rmd)
REPORTHTML = $(SRC:.rmd=.html)

# Generate the report file
report: $(REPORTHTML)

# Clean all the rendered output
clean:
	rm -rf report/*.{html,md,pdf,docx} plots/* cache/*

# Use RMarkdown to render HTML, PDF, and docx from RMarkdown
%.html: %.rmd
	Rscript -e 'rmarkdown::render("$<", "html_document", "$(notdir $@)")'
%.pdf: %.rmd
	Rscript -e 'rmarkdown::render("$<", "pdf_document", "$(notdir $@)")'
%.docx: %.rmd
	Rscript -e 'rmarkdown::render("$<", "word_document", "$(notdir $@)")'
%.md: %.rmd
	Rscript -e 'rmarkdown::render("$<", "md_document", "$(notdir $@)")'

##============================================================================
## Targets to deploy the Python virtualenv
##============================================================================

env:
	virtualenv --prompt '(KARSANBIO-1127)' env; \
	source env/bin/activate; \
	pip install -r requirements.txt --no-index \
	--find-links /projects/clingenetics/software/python-wheels/
