#!/bin/bash
echo "Bash version ${BASH_VERSION}..."

DAY=$(date --date='1 day ago' +'%Y-%m-%d')
DAY_Y=$(date --date='1 day ago' +'%Y')
DAY_m=$(date --date='1 day ago' +'%m')
DAY_d=$(date --date='1 day ago' +'%d')

. dnl_eldgos.sh
