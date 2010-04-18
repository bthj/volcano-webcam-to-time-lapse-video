#!/bin/bash

for vika in {12..15}
do
	TIMESPAN="2010-vika-$vika"
	
	HALF="left"
	. sequence_eldgos_rename_timespan.sh
	
	HALF="right"
	. sequence_eldgos_rename_timespan.sh
done