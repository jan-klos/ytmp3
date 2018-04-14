#!/bin/bash

file=$1
while IFS= read -r link
do
	youtube-dl --extract-audio --audio-format mp3 $link
done < "$file"