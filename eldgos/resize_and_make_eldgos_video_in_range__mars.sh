#!/bin/bash

BASE_DIR="../eldgos_output/eldgos_dnl"

YEAR="2010"

MONTH="03"
for d in {24..31}
do
	DAY="$YEAR-$MONTH-$d"
	. resize_eldgos_left.sh
	. make_eldgos_video_left.sh
	. resize_eldgos_right.sh
	. make_eldgos_video_right.sh
done
