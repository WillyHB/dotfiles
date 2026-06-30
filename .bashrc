# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#aliases
alias goto='cd $(.goto)'
alias ls='ls --color=auto'
function cd {
	builtin cd "$@" && ls
}

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export PS1='\u@\h:\w\$ '
#export PS1='['$(cat /sys/class/power_supply/BAT0/capacity)']$ '

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

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XDG_CURRENT_DESKTOP=sway

export PATH="/home/willy/.local/stm32cube/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
. "/home/willy/.deno/env"
