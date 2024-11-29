#!/bin/bash

var_file="var.sh"
if [[ -f $var_file ]]; then
    source $var_file
else
    echo "Variable file not found. Creating a new one."
    index=0
    echo "index=\"$index\"" > $var_file
fi

languages=(dk gb)
setxkbmap "${languages[${index}]}"
notify-send "keyboard layout changed to ${languages[$index]}"

let "index+=1"

if [ "$index" -ge ${#languages[@]} ] 
then 
    index=0
fi
echo "index=\"$index\"" > $var_file





        


