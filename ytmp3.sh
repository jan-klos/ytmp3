#!/bin/bash

file=$1
while IFS= read -r link
do
    youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" $link
done < "$file"

for i in *.mp3 
do 
    avconv -y -i "$track" -c copy -metadata title="${track::-4}" "$track" 
done