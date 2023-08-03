#!/bin/bash

###
# Link the `settings.json` file
###

#set -x


vscode_dir=~/Library/Application\ Support/Code/User

SETTINGS_FILE="${HOME}/Library/Application Support/Code/User/settings.json"

if [ -f "$SETTINGS_FILE" ] && ! [ -L "$SETTINGS_FILE" ]
then
	mv "$SETTINGS_FILE" "${SETTINGS_FILE}.backup"
fi

if ! [ -L "$SETTINGS_FILE" ]
then
	ln -s "$ZSH/vscode/settings.json" "$vscode_dir"
fi

