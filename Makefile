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
report: download_data $(REPORTHTML)

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
## Targets to download input files
##============================================================================

clean_data:
	rm -rf data/G* data/mouse_c2_v5p1.rdata

data/GSE63310_RAW.tar:
	mkdir data;
	wget -O $@ ftp://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63310/suppl/GSE63310_RAW.tar;
	cd data && tar xvf $(@F)

data/mouse_c2_v5p1.rdata:
	wget -O $@ http://bioinf.wehi.edu.au/software/MSigDB/mouse_c2_v5p1.rdata

download_data: data/GSE63310_RAW.tar data/mouse_c2_v5p1.rdata

