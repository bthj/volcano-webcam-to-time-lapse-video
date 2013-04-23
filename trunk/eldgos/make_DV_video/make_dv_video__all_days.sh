#!/bin/bash

function makevideo {
	if [[ ! -d "$3/DV_10fps" && ! -L "$3/DV_10fps" ]] ; then
		mkdir --parents "$3/DV_10fps"
		mkdir --parents "$3/DV_12fps"
		mkdir --parents "$3/DV_15fps"
		mkdir --parents "$3/DV_defaultfps"
		mkdir --parents "$3/FLV_12fps"
	fi
	eval avconv -y -r 10 -i "$1$2/$4/$4_%04d.png" -s 720x576 -b 8M -r 25 "$3/DV_10fps/Eyjafjallajokull_$4.dv"
	eval avconv -y -r 12 -i "$1$2/$4/$4_%04d.png" -s 720x576 -b 8M -r 25 "$3/DV_12fps/Eyjafjallajokull_$4.dv"
	eval avconv -y -r 15 -i "$1$2/$4/$4_%04d.png" -s 720x576 -b 8M -r 25 "$3/DV_15fps/Eyjafjallajokull_$4.dv"
	eval avconv -y -i "$1$2/$4/$4_%04d.png" -s 720x576 -b 8M "$3/DV_defaultfps/Eyjafjallajokull_$4.dv"
	eval avconv -y -r 12 -i "$1$2/$4/$4_%04d.png" -s 768x576 -b 2048k "$3/FLV_12fps/Eyjafjallajokull_$4.flv"
}

BASE_DIR="/media/bthj/LaCie/eldgos/eldgos_dnl"
SOURCE_DIR="/crop/right"
OUT_DIR="/media/bthj/tankur3/eldgos/DV/right"

for i in $BASE_DIR$SOURCE_DIR/* ; do
  if [ -d "$i" ]; then
    echo "makevideo $(basename "$i")"
    makevideo $BASE_DIR $SOURCE_DIR $OUT_DIR $(basename "$i")
  fi
done

