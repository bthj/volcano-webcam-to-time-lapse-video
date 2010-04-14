#!/bin/bash

DAY=$(date --date='1 day ago' +'%Y-%m-%d')

RESIZE_DIR="eldgos_resize/right"

VIDEO_FILENAME_SUFFIX="right"

. make_eldgos_video.sh
