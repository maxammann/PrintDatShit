#!/bin/bash
PRINTER=$1
OUTPUT=$2

mkdir $OUTPUT
find . -type f -name "*.doc" -exec libreoffice --headless --print-to-file --printer-name the_printer_name --outdir $OUTPUT {} \;

for f in $OUTPUT/*
do
  echo "Printing " $f "?"
  read
  lp -d $PRINTER $f
done
