#!/bin/bash
#
# Usage:
# $ ./make-nanopub.sh 0 ENSMUSG00000041782

cat templates/der-nanopub-start.trig \
  | sed "s/ROW/$1/" \
  >> nanopubs/der-nanopubs.trig

cat files/fairified-data.nt \
  | grep "#differentialExpressionRatio/$1>" \
  >> nanopubs/der-nanopubs.trig

cat files/fairified-data.nt \
  | egrep "^<http://purl.org/fairified/pkd/#adjPvalue/$1> " \
  >> nanopubs/der-nanopubs.trig

cat files/fairified-data.nt \
  | egrep "^<http://rdf.ebi.ac.uk/resource/ensembl/$2> " \
  >> nanopubs/der-nanopubs.trig

cat templates/der-nanopub-end.trig \
  >> nanopubs/der-nanopubs.trig

