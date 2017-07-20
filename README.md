# Differential Expression with RNA-Seq - GrasPods Tutorial

## Overview

The goal of this tutorial is to help students gain familiarity with differential gene expression analysis using RNA-Seq data. To do this, we will work through a [recent tutorial article](https://f1000research.com/articles/5-1408/v2). 

Please refer to the original article for the logic underlying each analytical step. What I've tried to do in this document is provide the code-chunks in a more simply executable format (an [RMarkdown document](http://rmarkdown.rstudio.com/)), and provide some more explanatory comments as to what each code chunk is doing. 

In the lecture, I'll try to present both the logic and give an overview of what the code is doing.

## Getting Started

This tutorial assumes basic working knowledge of R and RStudio. All the analytical steps are documented in the main report document (`report/graspods_rna_seq_tutorial.rmd`).

To run and render the document:

- Clone this repository (`git clone https://github.com/rdocking/graspods_rna_seq_tutorial.git`)
- Change into the repository directory (`cd graspods_rna_seq_tutorial`)
- Download the necessary data files (`make download_data`)
- Check that the necessary R packages are installed (see comments in the report file)
- Render the report (`make report`)

Questions? Email `rdocking` at `bcgsc.ca`, or raise an issue in this repository.


