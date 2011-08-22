#!/bin/bash

# expects variables set:  DAY

function rename {
	num=1
	for file in $1/$2/*.png; do
	  echo "renaming $file to sequence"
	  mv "$file" $1/$2/$DAY"_$(printf "%04u" $num).png"
	  let num=num+1
	done
}

BASE_DIR="/media/tankur3/eldgos/eldgos_dnl/crop/left"
rename $BASE_DIR $DAY

BASE_DIR="/media/tankur3/eldgos/eldgos_dnl/crop/right"
rename $BASE_DIR $DAY