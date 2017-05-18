#!/bin/bash

cat files/fairified-data.nt \
  | grep "<http://rdf.ebi.ac.uk/terms/atlas/isMeasurementOf>" \
  | sed -r 's|^.*/([0-9]+)> <.*> <.*/ensembl/(.*)> ..*$|\1 \2|' \
  > files/row-gene-list.txt
