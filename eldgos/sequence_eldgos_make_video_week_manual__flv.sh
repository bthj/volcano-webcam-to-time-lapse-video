#!/bin/bash

VIDEO_FILE_EXTENSION="flv"
FRAME_RATE="-r 25"
OUT_FRAME_RATE="-r 25"
STILL_TIME="-ss 00:01:00"
SIZE="-s 720x576"
BIT_RATE="-b 8M"
TARGET=""
ASPECT=""

for vika in {13..15}
do
	TIMESPAN="2010-vika-$vika"
	
	VIDEO_FILENAME_SUFFIX="naer__fIn25-fOut25"
	HALF="left"
	. sequence_eldgos_make_video.sh
	
	VIDEO_FILENAME_SUFFIX="fjaer__fIn25-fOut25"
	HALF="right"
	. sequence_eldgos_make_video.sh
done