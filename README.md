# Differential Expression with RNA-Seq - GrasPods Tutorial

## Overview

The goal of this tutorial is to help students gain familiarity with differential gene expression analysis using RNA-Seq data. To do this, we will work through a [recent tutorial article](https://f1000research.com/articles/5-1408/v2). 

Please refer to the original article for the logic underlying each analytical step. What I've tried to do in this document is provide the code-chunks in a more simply executable format (an [RMarkdown document](http://rmarkdown.rstudio.com/)), and provide some more explanatory comments as to what each code chunk is doing. 

In the lecture, I'll try to present both the logic and give an overview of what the code is doing.

## Getting Started

This tutorial assumes basic working knowledge of R and RStudio. All the analytical steps are documented in the main report document (`report/graspods_rna_seq_tutorial.rmd`).

To run and render the document:

- Either clone this repository (`git clone https://github.com/rdocking/graspods_rna_seq_tutorial.git`), or download it (Select 'Clone or Download', then 'Download Zip', then uncompress the downloaded file)
- Open the RStudio project file (`report/graspods_rna_seq_tutorial.Rproj`)
- From within RStudio, open the report file (`report/graspods_rna_seq_tutorial.rmd`)
- Check that the necessary R packages are installed (see comments in the report file)
- Render the report (use the 'knit' button from within RStudio, or `make` from a Mac/Linux command line)

Questions? Email `rdocking` at `bcgsc.ca`, or raise an issue in this repository.

## Rendered Versions

Rendered versions of the slide presentation and R document are available in the `renders` folder.
