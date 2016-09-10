
export ZDOTDIR=$HOME/src/dotfiles

# Set default PATH
export PATH=$PATH:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:${HOME}/.bin:

export PATH=${HOME}/Library/Android/sdk/tools:${HOME}/Library/Android/sdk/platform-tools:$PATH

export PATH=/usr/local/bin:$PATH

[[ -f /opt/boxen/env.sh ]] && . /opt/boxen/env.sh

[[ -d /opt/boxen/homebrew/share/python ]] && path=($path /opt/boxen/homebrew/share/python)
