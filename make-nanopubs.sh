#!/bin/bash

rm -f files/nanopubs.trig

cat files/row-gene-list.txt \
  | awk '{ print "./make-nanopub.sh "$0 }' \
  | bash

np mktrusty files/nanopubs.trig
