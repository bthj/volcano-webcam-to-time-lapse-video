#!/bin/bash
echo "Bash version ${BASH_VERSION}..."

YESTERDAY=$(date --date='1 day ago' +'%Y-%m-%d')
YESTERDAY_Y=$(date --date='1 day ago' +'%Y')
YESTERDAY_m=$(date --date='1 day ago' +'%m')
YESTERDAY_d=$(date --date='1 day ago' +'%d')
BASE_URL="http://extras.vodafone.is/trailers/fimmvorduhals/mx10-4-235-80/$YESTERDAY_Y/$YESTERDAY_m/$YESTERDAY_d"

if [[ ! -d "$YESTERDAY" && ! -L "$YESTERDAY" ]] ; then
  mkdir "$YESTERDAY"
fi

for h in {00..23}
do
  for m in {00..59}
  do
    eval curl "$BASE_URL/$h/$m.jpg -o $YESTERDAY/$YESTERDAY_Y-$YESTERDAY_m-$YESTERDAY_d\T$h:$m.jpg"
    sleep 1.0
  done
done
