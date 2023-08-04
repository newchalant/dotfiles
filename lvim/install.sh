#!/bin/zsh
#
# Installs LunarVim
#

if ! [ -x "$(command -v lvim)" ]; then
  echo "  Installing LunarVim for you."
  yes yes | LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
fi


