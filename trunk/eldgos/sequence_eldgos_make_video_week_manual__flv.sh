#!/bin/bash

VIDEO_FILE_EXTENSION="flv"
FRAME_RATE="-r 25"
OUT_FRAME_RATE="-r 25"
STILL_TIME="-ss 00:01:00"
SIZE="-s 768x576"
BIT_RATE="-b 8M"
TARGET=""
ASPECT=""

for vika in {19..20}
do
	TIMESPAN="2010-vika-$vika"
	
	VIDEO_FILENAME_SUFFIX="naer__f25"
	HALF="left"
	. sequence_eldgos_make_video.sh
	
	VIDEO_FILENAME_SUFFIX="fjaer__f25"
	HALF="right"
	. sequence_eldgos_make_video.sh
done