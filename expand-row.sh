#!/bin/bash

cat files/PMLateVsNMLate_All.csv \
  | sed -r 's/,Ensembl Gene ID,/,Ensembl Gene ID 1,Ensembl Gene ID 2,Ensembl Gene ID 3,Ensembl Gene ID 4,Ensembl Gene ID 5,/' \
  | sed -r 's/,NO GENE ID[^,]*,/,,,,,,/' \
  | sed -r 's/,(ENS[0-9A-Z]*),/,\1,,,,,/' \
  | sed -r 's/,(ENS[0-9A-Z]*); (ENS[0-9A-Z]*),/,\1,\2,,,,/' \
  | sed -r 's/,(ENS[0-9A-Z]*); (ENS[0-9A-Z]*); (ENS[0-9A-Z]*),/,\1,\2,\3,,,/' \
  | sed -r 's/,(ENS[0-9A-Z]*); (ENS[0-9A-Z]*); (ENS[0-9A-Z]*); (ENS[0-9A-Z]*),/,\1,\2,\3,\4,,/' \
  | sed -r 's/,(ENS[0-9A-Z]*); (ENS[0-9A-Z]*); (ENS[0-9A-Z]*); (ENS[0-9A-Z]*); (ENS[0-9A-Z]*),/,\1,\2,\3,\4,\5,/' \
  > files/PMLateVsNMLate_All_ex.csv
