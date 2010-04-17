#!/bin/bash

# expects variables set:  DAY, BASE_DIR, CROP

DNL_DIR="../eldgos_output/eldgos_dnl"

DATE_FULL=$(date --date=$DAY +'%A %d. %B %Y')

. eldgos_mkdir.sh

for file in ./$DNL_DIR/$DAY/*.jpg; do
  echo "cropping $file to $CROP"
  FILE_NAME_BASE=$(basename $file)
  HOUR=${FILE_NAME_BASE:11:2}
  MINUTE=${FILE_NAME_BASE:14:2}
  $(convert -crop $CROP +repage -font Courier-Bold -pointsize 18 -fill 'rgba(255,255,255,0.5)' -gravity SouthWest -draw "text 0,0 '$DATE_FULL klukkan $HOUR:$MINUTE'" $file $BASE_DIR/$DAY/$FILE_NAME_BASE)
done

# let's rename to a continuous sequence
#num=1
#for file in ./$BASE_DIR/$DAY/*.jpg; do
#  echo "renaming $file to sequence"
#  mv "$file" ./$BASE_DIR/$DAY/$DAY"_$(printf "%04u" $num).jpg"
#  let num=num+1
#done
