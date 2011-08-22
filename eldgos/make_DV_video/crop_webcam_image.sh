#!/bin/bash

# expects variables set:  DAY, CROP, CROP_DIR

BASE_DIR="/media/tankur3/eldgos/eldgos_dnl"
SOURCE_DIR="withoutLogos"

DATE_FULL=$(date --date=$DAY +'%A %d. %B %Y')

. mk_base_dir_day.sh

for file in /$BASE_DIR/$SOURCE_DIR/$DAY/*.png; do
  echo "cropping $file to $CROP"
  FILE_NAME_BASE=$(basename $file)
  HOUR=${FILE_NAME_BASE:11:2}
  MINUTE=${FILE_NAME_BASE:14:2}
  $(convert -crop $CROP +repage $file $BASE_DIR/$CROP_DIR/$DAY/$FILE_NAME_BASE)
done