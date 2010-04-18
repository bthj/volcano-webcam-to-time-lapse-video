#!/bin/bash

# expects variables set:  HALF, DAY, TIMESPAN, MIN_HOUR, MAX_HOUR

RESIZE_BASE_DIR="../eldgos_output/eldgos_resize"

SEQUENCE_BASE_DIR="../eldgos_output/eldgos_sequence"

BASE_DIR="$SEQUENCE_BASE_DIR/$HALF/$TIMESPAN"

if [[ ! -d "$BASE_DIR" && ! -L "$BASE_DIR" ]] ; then
  mkdir --parents "$BASE_DIR"
fi

for file in ./$RESIZE_BASE_DIR/$HALF/$DAY/*.jpg; do
	FILE_NAME_BASE=$(basename $file)
  HOUR=${FILE_NAME_BASE:11:2}
  HOUR=$(( ${HOUR#0} ))  # no zero padding
  if [[ "$HOUR" -le "$MAX_HOUR" && "$HOUR" -ge "$MIN_HOUR" ]] ; then
  	echo "copying $file to $BASE_DIR"
		eval cp $file "$BASE_DIR/$FILE_NAME_BASE"
  fi
done