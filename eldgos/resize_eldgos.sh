#!/bin/bash

# expects variables set:  DAY, BASE_DIR, CROP

DNL_DIR="eldgos_dnl"

. eldgos_mkdir.sh

for file in ./$DNL_DIR/$DAY/*.jpg; do
  echo "cropping and resizing $file"
  eval convert -crop $CROP +repage -resize 768x576 -unsharp 0,1.5,0.05 $file ./$BASE_DIR/$DAY/$(basename $file)
done

# let's rename to a continuous sequence
num=1
for file in ./$BASE_DIR/$DAY/*.jpg; do
  echo "renaming $file to sequence"
  mv "$file" ./$BASE_DIR/$DAY/$DAY"_$(printf "%04u" $num).jpg"
  let num=num+1
done
