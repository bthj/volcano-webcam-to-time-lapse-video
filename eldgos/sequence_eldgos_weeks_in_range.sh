#!/bin/bash

MIN_HOUR=0
MAX_HOUR=23

function copy_to_dir {
	WEEK_NUMBER=$(date --date=$1 +'%U')
	TIMESPAN="$YEAR-vika-$WEEK_NUMBER"
	HALF="left"
	. sequence_eldgos_cp_to_dir.sh
  HALF="right"
	. sequence_eldgos_cp_to_dir.sh
}

YEAR="2010"

#MONTH="03"
#for d in {24..31}
#do
#	DAY="$YEAR-$MONTH-$d"
#	copy_to_dir $DAY
#done

MONTH="04"
for d in {17..17}
do
	DAY="$YEAR-$MONTH-$d"
	copy_to_dir $DAY
done