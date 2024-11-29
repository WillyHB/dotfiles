#!/bin/bash

# Arbitrary but unique message tag
msgTag="mybrightness"

# Query amixer for the current volume and whether or not the speaker is muted
brightness_max=$(brightnessctl m)
brightness_current=$(brightnessctl g)
brightness=$(( brightness_current*100 / brightness_max ))
dunstify -a "changeBrightness" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag \ -h int:value:"$brightness" "Brightness: ${brightness}"

# Play the volume changed sound
canberra-gtk-play -i audio-volume-change -d "changeVolume"
