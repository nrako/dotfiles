#!/usr/bin/env sh

# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# The original idea and most settings were grabbed from:
#   https://github.com/holman/dotfiles/blob/master/macos/set-defaults.sh
#   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
#
echo -e "\n\nSetting OS X settings"
echo "=============================="

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show hidden files by default
defaults write com.apple.Finder AppleShowAllFiles -bool false

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Expand save dialog by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

# Disable press-and-hold for keys in favor of key repeat.
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 1

# Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set up Safari for development.
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true
# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

# Set global keyboards shortcuts for vim style navigation
defaults write NSGlobalDomain NSUserKeyEquivalents '{
  "Open Location..." = "@$g";
  "Select Next Tab" = "@l";
  "Select Previous Tab" = "@h";
  "Show Next Tab" = "@l";
  "Show Previous Tab" = "@h";
}'

# Set keyboards shortcuts for some Apps
defaults write com.google.Chrome.canary NSUserKeyEquivalents '{
  "Find Next" = "^n";
  "Find Previous" = "^p";
}'
defaults write com.google.Chrome NSUserKeyEquivalents '{
  "Find Next" = "^n";
  "Find Previous" = "^p";
}'
defaults write com.github.wez.wezterm NSUserKeyEquivalents '{
  "Activate the tab to the left" = "@h";
  "Activate the tab to the right" = "@l";
}'


###############################################################################
# Transmission.app                                                            #
###############################################################################

# Use `~/Documents/Torrents` to store incomplete downloads
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Documents/Torrents"

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false
defaults write org.m0k.transmission MagnetOpenAsk -bool false

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false
# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

# IP block list.
# Source: https://giuliomac.wordpress.com/2014/02/19/best-blocklist-for-transmission/
defaults write org.m0k.transmission BlocklistURL -string "http://john.bitsurge.net/public/biglist.p2p.gz"
defaults write org.m0k.transmission BlocklistAutoUpdate -bool true

echo "Kill affected applications"
for app in Safari Finder Dock SystemUIServer Photos Transmission Twitter; do
	killall "$app" >/dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
