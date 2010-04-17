#!/bin/bash

#expects variables set:  DAY, RESIZE_DIR, VIDEO_FILENAME_SUFFIX


BASE_DIR="../eldgos_output/eldgos_video"

. eldgos_mkdir.sh

VIDEO_FILE_EXTENSION="flv"

FRAME_RATE="12"
STILL_TIME="00:01:00"

eval ffmpeg -r $FRAME_RATE -i "$RESIZE_DIR/$DAY/$DAY\_%04d.jpg" -s 768x576 -b 2048k "$BASE_DIR/$DAY/$DAY\_$VIDEO_FILENAME_SUFFIX.$VIDEO_FILE_EXTENSION"

eval ffmpeg -i "$BASE_DIR/$DAY/$DAY\_$VIDEO_FILENAME_SUFFIX.$VIDEO_FILE_EXTENSION" -ss $STILL_TIME -vcodec mjpeg -vframes 1 -f image2 "$BASE_DIR/$DAY/$DAY\_$VIDEO_FILENAME_SUFFIX.jpg"
