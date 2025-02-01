#!/bin/bash

var_file="var.sh"
if [[ -f $var_file ]]; then
    source $var_file
else
    echo "Variable file not found. Creating a new one."
    index=0
    echo "index=\"$index\"" > $var_file
fi

languages=(dk gb us)
flags=(🇩🇰 🇬🇧 🇺🇸)
setxkbmap "${languages[${index}]}" -option caps:escape

msgTag="myLanguage"
dunstify -a "changeLang" -u normal -i keyboard -h string:x-dunst-stack-tag:$msgTag \
     "Keyboard Layout set to ${languages[$index]} ${flags[$index]}"


(( index+=1 ))

if [ "$index" -ge ${#languages[@]} ] 
then 
    index=0
fi
echo "index=\"$index\"" > $var_file

canberra-gtk-play -i audio-volume-change -d "changeVolume"

