#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

# must
brew install openssl
brew install ack
brew install wget
brew install curl
brew install neovim/neovim/neovim

# git
brew install git
brew install hub
brew install diff-so-fancy

# terminal
brew install tmux
brew install fzf
brew install fasd
brew install tree
brew install terminal-notifier

# zsh
brew install zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# vim
brew install reattach-to-user-namespace
brew install neovim/neovim/neovim

# dev
brew install python
brew install go
brew install sqlite

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
brew install postgres
brew install postgis
brew install redis
brew install phantomjs
brew install memcached
brew install rabbitmq
brew install node
brew install pow


exit 0
