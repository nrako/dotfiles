#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

# must
brew install asdf
brew install openssl
brew install ag
brew install ack
brew install wget
brew install curl
brew tap beeftornado/rmtree

# git
brew install git
brew install git-lfs
# brew install gpg
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

# vim neovim
brew install neovim/neovim/neovim
brew install ctags
brew install python
brew install python3
brew install ripgrep
brew install gnu-sed
brew install lazygit
brew install fd

# dev
brew install Schniz/tap/fnm
brew install go
brew install sqlite
brew install puma/puma/puma-dev
brew install jq

# dev ocaml/reasonml
# brew install gpatch
# brew install opam

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

# utilities
# brew install gifify
# brew install mackup
# `echo 'https://www.nrako.com' | qrencode -o- -tutf8`
brew install qrencode

# Cask
brew install cask

brew install --cask iterm2
brew install --cask 1password
brew install --cask google-chrome
# brew install --cask atom
brew install --cask numi
brew install --cask github
brew install --cask vlc
brew install --cask slack
brew install --cask skype
brew install --cask sketch
brew install --cask caskroom/versions/google-chrome-canary
brew install --cask little-snitch
brew install --cask firefox
brew install --cask spotify
brew install --cask visual-studio-code
brew install --cask virtualbox
brew install --cask virtualbox-extension-pack
# brew install --cask steam
brew install --cask wireshark
brew install --cask the-unarchiver
# brew install --cask duet
# brew install --cask now
brew install --cask whatsapp
brew install --cask rectangle
brew install --cask discord
brew install --cask tad
brew install --cask oni
brew install --cask docker
brew install --cask postgres
brew install --cask sensiblesidebuttons
brew install --cask raycast

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

# Graph
brew tap martido/homebrew-graph
brew install graphviz

exit 0
