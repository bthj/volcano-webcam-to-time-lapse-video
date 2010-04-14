#!/bin/bash

DAY=$(date --date='1 day ago' +'%Y-%m-%d')

BASE_DIR="eldgos_resize/right"

CROP="1024x768+1024+0"

. resize_eldgos.sh
