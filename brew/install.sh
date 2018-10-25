#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

# must
brew install openssl
brew install ag
brew install ack
brew install wget
brew install curl
brew install neovim/neovim/neovim
brew tap beeftornado/rmtree

# git
brew install git
brew install git-lfs
brew install gpg
brew install hub
brew install diff-so-fancy

# terminal
brew install tmux
brew install reattach-to-user-namespace
brew install fzf
brew install fasd
brew install tree
brew install urlview
# brew install terminal-notifier

# zsh
brew install zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install zsh-completions

# vim
brew install neovim/neovim/neovim
brew install ctags
brew install python
brew install python3

# dev
brew install nave
brew install yarn --without-node
brew install go
brew install sqlite
brew install puma/puma/puma-dev
brew install jq

# dev ios
# brew install xcproj
# brew install xctool
# brew install swiftlint
# brew install swiftgen
# brew install carthage

# heroku
brew install heroku
brew install heroku-toolbelt

# ef
brew install redis
brew install phantomjs
brew install memcached
brew install rabbitmq
brew install chruby
brew install ruby-install

# utilities
brew install gifify
brew install mackup
# `echo 'https://www.nrako.com' | qrencode -o- -tutf8`
brew install qrencode

# Cask
brew install cask

brew cask install iterm2
brew cask install 1password
brew cask install google-chrome
brew cask install atom
brew cask install screenhero
brew cask install numi
brew cask install github
brew cask install vlc
brew cask install slack
brew cask install skype
brew cask install sketch
brew cask install caskroom/versions/google-chrome-canary
brew cask install little-snitch
brew cask install firefox
brew cask install spotify
brew cask install visual-studio-code
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install steam
brew cask install wireshark
brew cask install the-unarchiver
brew cask install duet
brew cask install now
brew cask install whatsapp
brew cask install spectacle
brew cask install discord
brew cask install tad
brew cask install oni
brew cask install docker
brew cask install postgres

# brew cask install caskroom/versions/firefox-beta
# brew cask install ukelele
# brew cask install plug
# brew cask install bettertouchtool
# brew cask install appcleaner
# brew cask install dropbox
# brew cask install flinto
# brew cask install android-studio
# brew cask install genymotion


# mas Mac App Store command line interface
# brew install mas
# mas install 497799835 # Xcode
# mas install 731062389 # iFlicks2
# mas install 824183456 # Affinity Designer
# mas install 824183456 # Affinity Photo
# mas install 409201541 # Pages
# mas install 409203825 # Numbers
# mas install 409183694 # Keynote

# Fonts
brew tap caskroom/fonts

# so far the best font available for my eyes, this use the patched nerd version
# for vim-devicons
brew cask install font-sourcecodepro-nerd-font

exit 0
