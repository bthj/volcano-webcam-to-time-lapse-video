#!/bin/bash

# expects variable set:  BASE_DIR, DAY

if [[ ! -d "$BASE_DIR/$DAY" && ! -L "$BASE_DIR/$DAY" ]] ; then
  mkdir --parents "$BASE_DIR/$DAY"
fi
