export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/src/dotfiles/.oh-my-zsh/custom

# Look in ~/.oh-my-zsh/themes/ or $ZSH_CUSTOM/themes/
ZSH_THEME="nrako" # symlink to npm pur-prompt

# Aliasing/completion for hub https://github.com/defunkt/hub
# TODO need to solve auto-completion
# eval "$(hub alias -s)"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Look in ~/.oh-my-zsh/plugins/* and $ZSH_CUSTOM/plugins/*
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  git
  grunt
  # github #very slow
  brew
  heroku
  node
  #npm #kinda slow
  fastnpm
  osx
  last-working-dir
  sublime
  themes
  rvm gem
  redis-cli
  django
  fasd
  per-directory-history
  docker
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/src
export PIP_DOWNLOAD_CACHE=/tmp

export DOCKER_HOST=tcp://localhost:4243

export NODEWEBKIT_BIN=/Applications/node-webkit.app/Contents/MacOS/node-webkit

# Must have! fix slow git completion!
__git_files () {
    _wanted files expl 'local files' _files
}

# Export sensible data
source $HOME/src/dotfiles/.sensible

# To avoid EMFile Error
ulimit -n 512
