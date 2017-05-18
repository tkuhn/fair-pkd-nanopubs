#!/bin/bash

rm -f nanopubs/der-nanopubs.trig

cat files/row-gene-list.txt \
  | awk '{ print "./make-nanopub.sh "$0 }' \
  | bash

cat \
  templates/analysis-nanopub.trig \
  nanopubs/der-nanopubs.trig \
  > nanopubs/combined-nanopubs.trig

np mktrusty nanopubs/combined-nanopubs.trig
