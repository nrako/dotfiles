# Git
alias gl="git log --graph --full-history --pretty=format:'%Cred%h%Creset -%Cgreen%d%Creset %s %Cblue(%cr)%Creset <%ae>' --abbrev-commit --date=relative"
alias gla="git log --graph --full-history --all --pretty=format:'%Cred%h%Creset -%Cgreen%d%Creset %s %Cblue(%cr)%Creset <%ae>' --abbrev-commit --date=relative --branches"
alias lg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'


alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"

alias json="python -mjson.tool"

alias ios="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"

# HTTP serve the current directory to 0.0.0.0 and safety port 8765
# Detect python version
ret=`python -c 'import sys; print("%i" % (sys.hexversion<0x03000000))'`
if [ $ret -eq 0 ]; then    # Python version is >= 3
  alias pyhttp='python -m http.server 8765'
else    # Python version is < 3
  alias pyhttp='python -m SimpleHTTPServer 8765'
fi

# Tails
t() {
  tail -f $1 | perl -pe "s/$2/\e[1;31;43m$&\e[0m/g"
}
alias lf='/bin/ls -rt|tail -n1'


alias sulast='sudo $(history -p !-1)'


# Unarchive
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1     ;;
      *.tar.gz)    tar xzf $1     ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar e $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xf $1      ;;
      *.tbz2)      tar xjf $1     ;;
      *.tgz)       tar xzf $1     ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)     echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


# ls
alias lf='ls -Gl | grep ^d' #Only list directories
alias lsd='ls -Gal | grep ^d' #Only list directories, including hidden ones
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''


alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

# cd
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

alias activate="source .venv/bin/activate"
alias mr='python manage.py runserver'

alias al="alias | grep"

alias george="foreman start -f Procfile_dev"

alias flac='ruby ~/.bin/convertmp3/convertmp3.rb -b 320 -d ./'

# Docker
alias drmi='docker rmi $(docker images --filter dangling=true --quiet)'
alias dki="docker run -t -i -P"
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias dm='docker-machine'
alias dc='docker-compose'
function b2d {
  eval "$(boot2docker shellinit)"
}
function dme {
  eval "$(docker-machine env $1)"
  sudo sed -i '' -E "s/^ *[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+( +$1.machine)/$(docker-machine ip $1)\1/" /etc/hosts
}
