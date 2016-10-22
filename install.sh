#!/usr/bin/env bash
# Mostly grabbed from:
#   https://github.com/nicknisi/dotfiles/commit/9e841588b6944b50543a112b303278b6eb386c7f

echo "Installing dotfiles"

echo "initializing submodule(s)"
git submodule update --init --recursive

echo "links all *.symlink files"
source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo -e "\n\nRunning on OSX"
    source brew/install.sh
    source macos/install.sh
fi

echo "install terminfo for italic"
tic ./resources/tmux-256color-italic.ti
tic ./resources/xterm-256color-italic.ti

echo "install custom keyboard layout"
cp ~/src/dotfiles/keyboards/swiss-dev.keylayout ~/Library/Keyboard\ Layouts/

echo "configuring zsh as default shell"
chsh -s $(which zsh)

echo "Done."
