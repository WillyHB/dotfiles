#!/bin/bash
# .bashrc

export DISPLAY=:0.0
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#aliases
alias go='cd $(.go)'
alias ls='ls --color=auto'

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export PS1='\u@\h:\w\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
. "$HOME/.cargo/env"
