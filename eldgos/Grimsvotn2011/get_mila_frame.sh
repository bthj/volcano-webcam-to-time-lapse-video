#!/bin/bash

YEAR=$(date +'%Y')
MONTH=$(date +'%m')
DAY=$(date +'%d')
HOUR=$(date +'%H')
MINUTE=$(date +'%M')
SECOND=$(date +'%S')

#eval mplayer -nosound -cache 50 -frames 1 -vo png rtmp://194.144.245.244/mila/grimsvotn2.stream/
eval mplayer -nosound -frames 1 -vo png rtmp://194.144.245.244/mila/grimsvotn2.stream/
eval mv 00000001.png $YEAR-$MONTH-$DAY\T$HOUR$MINUTE$SECOND.png