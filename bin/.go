#!/bin/bash

loc=$(find / -type d | fzf)
echo "$loc"
#cd "$loc" || exit 1
