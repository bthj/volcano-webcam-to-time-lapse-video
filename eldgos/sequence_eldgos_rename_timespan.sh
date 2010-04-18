#!/bin/bash

# expects variables set:  HALF, TIMESPAN

SEQUENCE_BASE_DIR="../eldgos_output/eldgos_sequence"

BASE_DIR="$SEQUENCE_BASE_DIR/$HALF/$TIMESPAN"

# let's rename to a continuous sequence
num=1
for file in ./$BASE_DIR/*.jpg; do
  echo "renaming $file to sequence"
  mv "$file" ./$BASE_DIR/$TIMESPAN"_$(printf "%05u" $num).jpg"
  let num=num+1
done