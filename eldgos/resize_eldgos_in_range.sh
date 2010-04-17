#!/bin/bash

YEAR="2010"

MONTH="03"
for d in {24..31}
do
	DAY="$YEAR-$MONTH-$d"
	. resize_eldgos_left.sh
	. resize_eldgos_right.sh
done

MONTH="04"
for d in {01..15}
do
	DAY="$YEAR-$MONTH-$d"
	. resize_eldgos_left.sh
	. resize_eldgos_right.sh
done