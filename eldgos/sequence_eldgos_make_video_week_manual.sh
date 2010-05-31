#!/bin/bash

VIDEO_FILE_EXTENSION="flv"
FRAME_RATE="-r 12"
STILL_TIME="-ss 00:01:00"
SIZE="-s 768x576"
BIT_RATE="-b 2048k"
TARGET=""
ASPECT=""

for vika in {19..20}
do
	TIMESPAN="2010-vika-$vika"
	
	VIDEO_FILENAME_SUFFIX="naer"
	HALF="left"
	. sequence_eldgos_make_video.sh
	
	VIDEO_FILENAME_SUFFIX="fjaer"
	HALF="right"
	. sequence_eldgos_make_video.sh
done