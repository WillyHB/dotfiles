#!/bin/bash

rm -rf ~/Downloads
copyq &
waybar &
~/.config/sway/power.sh &
fcitx5 -d &
xremap ~/.config/xremap/config.yml &

