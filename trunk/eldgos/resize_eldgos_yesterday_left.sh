#!/bin/bash

DAY=$(date --date='1 day ago' +'%Y-%m-%d')

BASE_DIR="eldgos_resize/left"

CROP="1024x768+0+0"

. resize_eldgos.sh
