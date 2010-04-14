#!/bin/bash

DAY=$(date --date='1 day ago' +'%Y-%m-%d')

RESIZE_DIR="eldgos_resize/left"

VIDEO_FILENAME_SUFFIX="left"

. make_eldgos_video.sh
