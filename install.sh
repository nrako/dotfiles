# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install git
brew doctor
brew update
brew install git

# install oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# clone dotfiles
mkdir ~/src
cd ~/src
git clone git@github.com:nrako/dotfiles.git
cd dotfiles
# clone submodules within dotfiles
git submodule init
git submodule update

rm ~/.zshrc
ln -s ~/src/dotfile/.zshrc ~/.zshrc
ln -s ~/src/dotfile/.zshenv ~/.zshenv

# copy custom keyboard layout
cp ~/src/dotfiles/keyboards/Swiss FR Dev.keylayout ~/Library/Keyboard Layouts/

# install rbenv
brew update
brew upgrade rbenv ruby-build

# install latest stable ruby
rbenv install 2.1.4
rbenv global 2.1.4

# install foreman
gem install foreman



# install xquartz via website https://xquartz.macosforge.org



brew install fasd
brew install wine
# got take a coffee
brew install nginx
brew install ant
brew install wget

# install Java SDK http://www.oracle.com/technetwork/java/javase/downloads/index.html =|(
