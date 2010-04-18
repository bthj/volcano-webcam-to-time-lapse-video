#!/bin/bash

#expects variables set:  DAY, VIDEO_FILENAME_SUFFIX


BASE_DIR="../eldgos_output/eldgos_video"

. eldgos_mk_base_dir.sh


SEQUENCE_DIR="../eldgos_output/eldgos_sequence/$HALF/$TIMESPAN"

eval ffmpeg $FRAME_RATE -i "$SEQUENCE_DIR/$TIMESPAN\_%05d.jpg" -r 30 $SIZE $BIT_RATE "$BASE_DIR/$TIMESPAN\_$VIDEO_FILENAME_SUFFIX.$VIDEO_FILE_EXTENSION"

eval ffmpeg -i "$BASE_DIR/$TIMESPAN\_$VIDEO_FILENAME_SUFFIX.$VIDEO_FILE_EXTENSION" $STILL_TIME -vcodec mjpeg -vframes 1 -f image2 "$BASE_DIR/$TIMESPAN\_$VIDEO_FILENAME_SUFFIX.jpg"
