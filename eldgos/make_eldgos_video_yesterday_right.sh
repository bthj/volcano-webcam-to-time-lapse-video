#!/bin/bash

DAY=$(date --date='1 day ago' +'%Y-%m-%d')

RESIZE_DIR="../eldgos_output/eldgos_resize/right"

VIDEO_FILENAME_SUFFIX="fjaer"

. make_eldgos_video.sh
