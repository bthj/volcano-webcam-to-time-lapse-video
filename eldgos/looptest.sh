#!/bin/bash



for h in {00..23}
do
  for m in {00..59}
  do
    #echo "$(printf "%02d" "$h") - $(printf "%02d" "$m")"
		echo $h - $m
    #sleep 1.0
  done
done
