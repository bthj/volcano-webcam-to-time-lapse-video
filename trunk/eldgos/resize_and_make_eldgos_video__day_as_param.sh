#!/bin/bash

BASE_DIR="../eldgos_output/eldgos_dnl"

DAY=$1

. resize_eldgos_left.sh
. make_eldgos_video_left.sh
. resize_eldgos_right.sh
. make_eldgos_video_right.sh
