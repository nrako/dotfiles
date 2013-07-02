export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="nrako"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias george="foreman start -f Procfile_dev"

# Aliasing/completion for hub https://github.com/defunkt/hub
# TODO need to solve auto-completion
# eval "$(hub alias -s)"

# Completion for grunt for now only available for bash :(
# eval "$grunt --completion=bash"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github battery brew heroku node npm osx last-working-dir sublime themes vagrant vundle rvm gem bower coffee bower redis-cli virtualenvwrapper)

source $ZSH/oh-my-zsh.sh

# Set default PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:${HOME}/.bin
# Heroku Toolbelt - not sure if needed - use brew?
#export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# EC2 API Tools - use brew?
#export EC2_HOME=~/.ec2
#export PATH=$PATH:$EC2_HOME/bin
#export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
#export EC2_SSH_PRIVATE_KEY=`ls $EC2_HOME/ec2-keypair.pem`
#export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
#export EC2_URL=https://ec2.us-west-1.amazonaws.com

# http://alias.sh/
export ALIAS_SH_USER_ID=1950

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh" # This loads NVM Node

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/sandbox
export PIP_RESPECT_VIRTUALENV=true
export PIP_VIRTUALENV_BASE=$WORKON_HOME

