
export ZDOTDIR=$HOME/src/dotfiles

# Set default PATH
export PATH=$PATH:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:${HOME}/.bin

export PATH=/usr/local/bin:$PATH

# rbenv
eval "$(rbenv init -)"

[[ -f /opt/boxen/env.sh ]] && . /opt/boxen/env.sh

[[ -d /opt/boxen/homebrew/share/python ]] && path=($path /opt/boxen/homebrew/share/python)
