#!/usr/bin/env bash

set -e

if [[ -z $1 ]]; then
  echo -e "Usage: script.sh [m3u8_address] [filename]\n";
  echo -e "\x1b[91;1mError: m3u8 source is required.\x1b[0m";
  exit;
fi

if [[ -z $2 ]]; then
  echo -e "\x1b[91;1mError: filename is required.\x1b[0m";
  exit;
fi

ffmpeg -i "$1" -c copy -bsf:a aac_adtstoasc "$2.mp4";

echo -e "Done\n";
