#!/usr/bin/env bash

set -e

if [[ -z $1 ]]; then
  echo -e "Usage: script.sh [m3u8_address] [filename]\n";
  exit;
fi

file=$(basename "$1");
filename=${file%.*};

if [[ ! -z $2 ]]; then
  filename="$2"
fi

ffmpeg -i "$1" -c copy -bsf:a aac_adtstoasc "$filename.mp4";

echo -e "\033[0;32mDownload is completed.\033[0m";
