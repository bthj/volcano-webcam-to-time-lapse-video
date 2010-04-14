#!/bin/bash

# expects variables set:  DAY, DAY_Y, DAY_m, DAY_d

BASE_DIR="eldgos_dnl"
BASE_URL="http://extras.vodafone.is/trailers/fimmvorduhals/mx10-4-235-80/$DAY_Y/$DAY_m/$DAY_d"

. eldgos_mkdir.sh

for h in {00..23}
do
  for m in {00..59}
  do
    eval curl "$BASE_URL/$h/$m.jpg -o $BASE_DIR/$DAY/$DAY_Y-$DAY_m-$DAY_d\T$h:$m.jpg"
    sleep 1.0
  done
done
