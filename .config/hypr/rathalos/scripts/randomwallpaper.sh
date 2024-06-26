#!/bin/bash

# This script will randomly go through the files of a directory, setting it
# up as the wallpaper at regular intervals
#
# NOTE: this script uses bash (not POSIX shell) for the RANDOM variable

if [[ $# -lt 1 ]] || [[ ! -d $1   ]]; then
	echo "Usage:
	$0 <dir containing images>"
	exit 1
fi

# Edit below to control the images transition
# export SWWW_TRANSITION_FPS=60
# export SWWW_TRANSITION_STEP=90
# export SWWW_TRANSITION_TYPE=any
# export SWWW_TRANSITION_DURATION=3

# This controls (in seconds) when to switch to the next image
INTERVAL=900

while true; do
	find "$1" \
		| while read -r img; do
			echo "$((RANDOM % 1000)):$img"
		done \
		| sort -n | cut -d':' -f2- \
		| while read -r img; do
			swww img --resize fit "$img" --transition-step 90 --transition-fps 60 --transition-type any --transition-duration 3
			sleep $INTERVAL

		done
done
