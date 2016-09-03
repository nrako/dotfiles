# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# The original idea and most settings were grabbed from:
#   https://github.com/holman/dotfiles/blob/master/osx/set-defaults.sh
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
# Run ./set-defaults.sh and you'll be good to go.

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false
# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0

# Always open everything in Finder's list view. This is important.
#defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Run the screensaver if we're in the bottom-left hot corner.
#defaults write com.apple.dock wvous-bl-corner -int 5
#defaults write com.apple.dock wvous-bl-modifier -int 0

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true
# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, and `true` with `false`.
defaults write NSGlobalDomain AppleLanguages -array "en" "fr-ch" "fr" "de"
defaults write NSGlobalDomain AppleLocale -string "en_CH@currency=CHF"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Set the timezone; see `systemsetup -listtimezones` for other values
systemsetup -settimezone "Europe/Zurich" > /dev/null

# Set global keyboards shortcuts
defaults write -g NSUserKeyEquivalents '{
  Back = "@~h";
  Forward = "@~l";
  "Go Back" = "@~h";
  "Go Forward" = "@~l";
  "Open Location..." = "@$l";
  "Select Next Tab" = "@l";
  "Select Previous Tab" = "@h";
  "Show Next Tab" = "@l";
  "Show Previous Tab" = "@h";
}'
