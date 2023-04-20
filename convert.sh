#!/usr/bin/env bash
set -x

for file in `ls photos`; 
do
	convert photos/$file -resize 76800@ thumbnails/$file; 
done
