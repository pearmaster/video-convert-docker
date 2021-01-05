#!/bin/bash

FILENAME=$1

EXTENSION="${FILENAME##*.}"
NAME="${FILENAME%.*}"

/usr/bin/ffmpeg -i /media/${FILENAME} \
  -dn -map 0 -map_metadata 0 -map_chapters 0 -reset_timestamps 1 \
  -c copy \
  -segment_time 00:10:00 -f segment \
  /shared/${NAME}%03d.${EXTENSION}
