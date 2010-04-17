#!/bin/bash

BASE_DIR="../eldgos_output/eldgos_dnl"


function download {
	BASE_URL="http://extras.vodafone.is/trailers/fimmvorduhals/mx10-4-235-80/$1/$2/$3"
	for h in {00..23}
	do
		for m in {00..59}
		do
			echo "downloading $BASE_URL/$h/$m.jpg"
			eval curl "$BASE_URL/$h/$m.jpg -o $BASE_DIR/$4/$1-$2-$3\T$h:$m.jpg"
			sleep 1.0
		done
	done
}


YEAR="2010"

MONTH="03"
for d in {24..31}
do
	DAY="$YEAR-$MONTH-$d"
	. eldgos_mkdir.sh
	download $YEAR $MONTH $d $DAY
done

MONTH="04"
for d in {01..13}
do
	DAY="$YEAR-$MONTH-$d"
	. eldgos_mkdir.sh
	download $YEAR $MONTH $d $DAY
done