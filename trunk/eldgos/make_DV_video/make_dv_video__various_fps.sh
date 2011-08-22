#!/bin/bash

function makevideo {
	if [[ ! -d "$1/$3/$4" && ! -L "$1/$3/$4" ]] ; then
  		mkdir --parents "$1/$3/$4"
	fi
	eval ffmpeg -r 10 -i "$1$2/$4/$4_%04d.png" -s 720x576 -b 8M -r 25 "$1/$3/$4/VO495__$4__infps10_outfps25.dv"
	eval ffmpeg -r 12 -i "$1$2/$4/$4_%04d.png" -s 720x576 -b 8M -r 25 "$1/$3/$4/VO495__$4__infps12_outfps25.dv"
	eval ffmpeg -r 15 -i "$1$2/$4/$4_%04d.png" -s 720x576 -b 8M -r 25 "$1/$3/$4/VO495__$4__infps15_outfps25.dv"
	eval ffmpeg -i "$1$2/$4/$4_%04d.png" -s 720x576 -b 8M "$1/$3/$4/VO495__$4__default_fps25.dv"
	eval ffmpeg -r 12 -i "$1$2/$4/$4_%04d.png" -s 768x576 -b 2048k "$1/$3/$4/$4.flv"
}

BASE_DIR="/media/tankur3/eldgos/eldgos_dnl"
SOURCE_DIR="/crop/right"
OUT_DIR="/dv"

DAY="2010-04-17"
makevideo $BASE_DIR $SOURCE_DIR $OUT_DIR $DAY  

DAY="2010-05-08"
makevideo $BASE_DIR $SOURCE_DIR $OUT_DIR $DAY

DAY="2010-05-11"
makevideo $BASE_DIR $SOURCE_DIR $OUT_DIR $DAY

DAY="2010-05-13"
makevideo $BASE_DIR $SOURCE_DIR $OUT_DIR $DAY

DAY="2010-05-16"
makevideo $BASE_DIR $SOURCE_DIR $OUT_DIR $DAY

