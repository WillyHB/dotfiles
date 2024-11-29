#!/bin/bash
# changeVolume

# Arbitrary but unique message tag
msgTag="myvolume"

# Query amixer for the current volume and whether or not the speaker is muted
volume="$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))"
mute="$(awk -F"[][]" '/Left:/ { print $4 }' <(amixer sget Master))"
if [[ $volume == 0 || "$mute" == "off" ]]; then
    # Show the sound muted notification
    dunstify -a "changeVolume" -u low -i audio-volume-muted -h string:x-dunst-stack-tag:$msgTag "Volume muted" 
else
    # Show the volume notification
    dunstify -a "changeVolume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag \
    -h int:value:"$volume" "Volume: ${volume}"
fi

# Play the volume changed sound
canberra-gtk-play -i audio-volume-change -d "changeVolume"
