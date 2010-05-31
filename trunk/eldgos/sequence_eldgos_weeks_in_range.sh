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

#MONTH="04"
#for d in {25..30}
#do
#	DAY="$YEAR-$MONTH-$d"
#	copy_to_dir $DAY
#done

MONTH="05"
for d in {09..22}
do
	DAY="$YEAR-$MONTH-$d"
	copy_to_dir $DAY
done