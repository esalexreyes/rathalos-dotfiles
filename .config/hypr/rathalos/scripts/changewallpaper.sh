#!/bin/bash

DIR=$HOME/Pictures/Wallpapers/
PICS=($(find ${DIR} -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" \)))
RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

swww img --resize fit ${RANDOMPICS} --transition-step 90 --transition-fps 60 --transition-type any --transition-duration 3
