#!/bin/bash

np mkindex \
  -t 'Data for meta-analysis of polycystic kidney disease expression profiles' \
  -d 'We introduce the PKD Signature, a set of 1,515 genes that are commonly dysregulated in PKD studies. We show that the signature genes include many known and novel PKD-related genes and functions. Moreover, genes with a role in injury repair, as evidenced by expression data and/or automated literature analysis, were significantly enriched in the PKD Signature, with 35% of the PKD Signature genes being directly implicated in injury repair.' \
  -c '0000-0002-2759-8079' \
  -c '0000-0002-7990-1324' \
  -a 'https://doi.org/10.1152/ajprenal.00653.2016' \
  -o nanopubs/trusty.combined-index.trig \
  nanopubs/combined-nanopubs.trig
