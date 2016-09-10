#!/usr/bin/env bash
# Mostly grabbed from:
#   https://github.com/nicknisi/dotfiles/commit/9e841588b6944b50543a112b303278b6eb386c7f

echo "Installing dotfiles"

echo "initializing submodule(s)"
git submodule update --init --recursive

source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo -e "\n\nRunning on OSX"
    source install/brew.sh
    source install/macos.sh
fi

echo "creating vim directories"
mkdir -p ~/.vim-tmp

echo "install custom keyboard layout"
cp ~/src/dotfiles/keyboards/Swiss FR Dev.keylayout ~/Library/Keyboard Layouts/

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Done."
