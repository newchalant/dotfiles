# Sets reasonable macOS defaults.
#
# Mostly based on:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
# Run ./set-defaults.sh and you'll be good to go.

##### Ones that should be added for sure

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv


#################### SPOTLIGHT


# Remove spotlight item from the menu bar
defaults write com.apple.Spotlight MenuItemHidden -int 1

# Disable spotlight shortcut Cmd + Space 
/usr/libexec/PlistBuddy ~/Library/Preferences/com.apple.symbolichotkeys.plist -c \
  "Set AppleSymbolicHotKeys:64:enabled false"


##################### DOCK

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Automatically put Dock to the left
defaults write com.apple.dock orientation left

# Don’t show recent applications in Dock
#defaults write com.apple.dock show-recents -bool false

# Set the icon size of Dock items to 36 pixels
#defaults write com.apple.dock tilesize -int 36

# Enable highlight hover effect for the grid view of a stack (Dock)
#defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Wipe all apps from the Dock
#defaults write com.apple.dock persistent-apps -array

# Show only open applications in the Dock
#defaults write com.apple.dock static-only -bool true



##### Ones that are just for the sake of it, i.e. cool features that does not break system

# Show the ~/Library folder.
chflags nohidden ~/Library

# Run the screensaver if we're in the bottom-left hot corner.
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0


##### iTerm2
defaults write com.googlecode.iterm2 PromptOnQuit -bool false


##### Ones that seem reasonable

# Enable AirDrop over Ethernet and on unsupported Macs running Lion
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true



##### echo "Done. Note that some of these changes require a logout/restart to take effect."
