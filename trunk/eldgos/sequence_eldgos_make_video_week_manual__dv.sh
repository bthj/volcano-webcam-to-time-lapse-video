#!/bin/bash

VIDEO_FILE_EXTENSION="dv"
FRAME_RATE="-r 30"
OUT_FRAME_RATE="-r 30"
STILL_TIME="-ss 00:01:00"
SIZE="-s 720x576"
BIT_RATE="-b 8M"
TARGET=""
ASPECT=""

for vika in {15..15}
do
	TIMESPAN="2010-vika-$vika"
	
	VIDEO_FILENAME_SUFFIX="naer__fIn30-fOut30"
	HALF="left"
	. sequence_eldgos_make_video.sh
	
	VIDEO_FILENAME_SUFFIX="fjaer__fIn30-fOut30"
	HALF="right"
	. sequence_eldgos_make_video.sh
done