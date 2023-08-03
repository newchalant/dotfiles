#!/bin/sh
#
# Links config
#

# Creates .config folder if needed
mkdir -p $HOME/.config

# Creates .config/lvim folder if needed
mkdir -p $HOME/.config/lvim

# echo 'Symlinking Config File from .dotfiles to root...'

FILE=$HOME/.config/lvim/config.lua

if [ -f "$FILE" ] && ! [ -L "$FILE" ]
then
	rm "$FILE"
fi

if ! [ -L "$FILE" ]
then
	ln -s $HOME/.dotfiles/lvim/config.lua $HOME/.config/lvim/config.lua
fi


