#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

sketchybar --set "$NAME" background.drawing="$SELECTED"
index=$((SID - 1))

if [ "$SELECTED" = "true" ]; then
	sketchybar --animate tanh 10 --set "$NAME" icon.padding_left=12 icon.padding_right=12
	sketchybar --animate sin 5 --set "$NAME" icon.color=0xffffffff

else
	sketchybar --animate sin 10  --set "$NAME" icon.padding_left=1 icon.padding_right=1
	sketchybar --animate sin 10 --set "$NAME" icon.color=0x90ffffff
fi
