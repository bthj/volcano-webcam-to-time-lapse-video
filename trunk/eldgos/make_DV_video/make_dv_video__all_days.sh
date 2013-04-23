#!/bin/bash

function makevideo {
	if [[ ! -d "$3/$4" && ! -L "$3/$4" ]] ; then
		mkdir --parents "$3/DV_10fps/$4"
		mkdir --parents "$3/DV_12fps/$4"
		mkdir --parents "$3/DV_15fps/$4"
		mkdir --parents "$3/DV_defaultfps/$4"
		mkdir --parents "$3/FLV_12fps/$4"
	fi
	eval avconv -y -r 10 -i "$1$2/$4/$4_%04d.png" -s 720x576 -b 8M -r 25 "$3/DV_10fps/$4/Eyjafjallajokull__$4__infps10_outfps25.dv"
	eval avconv -y -r 12 -i "$1$2/$4/$4_%04d.png" -s 720x576 -b 8M -r 25 "$3/DV_12fps/$4/Eyjafjallajokull__$4__infps12_outfps25.dv"
	eval avconv -y -r 15 -i "$1$2/$4/$4_%04d.png" -s 720x576 -b 8M -r 25 "$3/DV_15fps/$4/Eyjafjallajokull__$4__infps15_outfps25.dv"
	eval avconv -y -i "$1$2/$4/$4_%04d.png" -s 720x576 -b 8M "$3/DV_defaultfps/$4/Eyjafjallajokull__$4__default_fps25.dv"
	eval avconv -y -r 12 -i "$1$2/$4/$4_%04d.png" -s 768x576 -b 2048k "$3/FLV_12fps/$4/Eyjafjallajokull__$4__12fps.flv"
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

