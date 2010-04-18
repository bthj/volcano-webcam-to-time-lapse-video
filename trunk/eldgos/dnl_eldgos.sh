#!/bin/bash

# expects variables set:  DAY, DAY_Y, DAY_m, DAY_d

BASE_DIR="../eldgos_output/eldgos_dnl"
BASE_URL="http://extras.vodafone.is/trailers/fimmvorduhals/mx10-4-235-80/$DAY_Y/$DAY_m/$DAY_d"

. eldgos_mk_base_dir_day.sh

for h in {00..23}
do
  for m in {00..59}
  do
    echo "downloading $BASE_URL/$h/$m.jpg"
    eval curl "$BASE_URL/$h/$m.jpg -o $BASE_DIR/$DAY/$DAY_Y-$DAY_m-$DAY_d\T$h:$m.jpg"
    sleep 1.0
  done
done
