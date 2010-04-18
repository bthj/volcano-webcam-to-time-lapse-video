#!/bin/bash

# expects variable set:  BASE_DIR, DAY

if [[ ! -d "$BASE_DIR" && ! -L "$BASE_DIR" ]] ; then
  mkdir --parents "$BASE_DIR"
fi
