#! /usr/bin/bash
# Start swww
WALLPAPERS_DIR=~/Pictures/Wallpapers
WALLPAPER=$(find "$WALLPAPERS_DIR" -type f | shuf -n 1)
swww img "$WALLPAPER" --resize fit --transition-step 90 --transition-fps 60 --transition-type any --transition-duration 3
