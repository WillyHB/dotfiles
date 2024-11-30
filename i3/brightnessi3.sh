#!/bin/bash
logx() {
  local x1=$1
  local x2=$2
  # Calculate log4 using natural logarithm
  echo "scale=2;l($x2)/l($x1) * 100" | bc -l
}
# Arbitrary but unique message tag
msgTag="mybrightness"

# Query amixer for the current volume and whether or not the speaker is muted
brightness_max=$(brightnessctl m)
brightness_current=$(brightnessctl g)
result=$(logx "$brightness_max" "$brightness_current")
dunstify -a "changeBrightness" -u low -i brightness -h string:x-dunst-stack-tag:$msgTag \
    -h int:value:"$result" "Brightness: ${result}%"


# Play the volume changed sound
#canberra-gtk-play -i audio-volume-change -d "changeVolume"
