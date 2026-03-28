. "$HOME/.cargo/env"

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

export STM32CubeMX_PATH=/home/willy/mcgill/robotics/stm32cubemx

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export GLFW_IM_MODULE=ibus   # sometimes needed

#export AQ_DRM_DEVICES="/dev/dri/by-path/pci-0000:00:02.0-card"
#export WLR_DRM_DEVICES="/dev/dri/by-path/pci-0000:00:02.0-card"
export AQ_DRM_DEVICES="/dev/dri/card1:"
export WLR_DRM_DEVICES="/dev/dri/card1:"
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/intel_icd.x86_64.json

if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]]; then
    exec sway
fi
