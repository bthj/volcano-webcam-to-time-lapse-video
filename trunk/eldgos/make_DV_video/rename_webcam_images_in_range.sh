#!/bin/bash

YEAR="2010"

#MONTH="03"
#for d in {24..31}
#do
#	DAY="$YEAR-$MONTH-$d"
#	. rename_to_continuous_sequence.sh
#done

#MONTH="04"
#for d in {01..30}
#do
#	DAY="$YEAR-$MONTH-$d"
#	. rename_to_continuous_sequence.sh
#done

MONTH="05"
for d in {16..21}
do
	DAY="$YEAR-$MONTH-$d"
	. rename_to_continuous_sequence.sh
done