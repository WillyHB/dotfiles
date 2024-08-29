#!/bin/bash

alacritty -e cd "$(~/dotfiles)" || exit
tmux source ~/.config/tmux/.tmux.conf
alacritty -e tmux new -A -s config
