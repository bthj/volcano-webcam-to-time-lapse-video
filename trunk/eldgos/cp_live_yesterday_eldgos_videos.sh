#!/bin/bash

DAY=$(date --date='1 day ago' +'%Y-%m-%d')

BASE_DIR="../eldgos_output/eldgos_video"


eval cp "$BASE_DIR/$DAY/$DAY\_left.flv" "/var/www/mappa.bthj.is/zenphoto/albums/hreyfimyndir/timelapse/eldgos/$DAY\_narrow.flv"
eval cp "$BASE_DIR/$DAY/$DAY\_left.jpg" "/var/www/mappa.bthj.is/zenphoto/albums/hreyfimyndir/timelapse/eldgos/$DAY\_narrow.jpg"

eval cp "$BASE_DIR/$DAY/$DAY\_right.flv" "/var/www/mappa.bthj.is/zenphoto/albums/hreyfimyndir/timelapse/eldgos/$DAY\_wide.flv"
eval cp "$BASE_DIR/$DAY/$DAY\_right.jpg" "/var/www/mappa.bthj.is/zenphoto/albums/hreyfimyndir/timelapse/eldgos/$DAY\_wide.jpg"

