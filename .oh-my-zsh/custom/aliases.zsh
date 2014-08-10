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

t() { 
tail -f $1 | perl -pe "s/$2/\e[1;31;43m$&\e[0m/g"
}


alias sulast='sudo $(history -p !-1)'

alias lf='/bin/ls -rt|tail -n1'

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


alias lf='ls -Gl | grep ^d' #Only list directories
alias lsd='ls -Gal | grep ^d' #Only list directories, including hidden ones

alias lg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias al="alias | grep"

alias george="foreman start -f Procfile_dev"
alias activate='source .venv/bin/activate'
alias mr='python manage.py runserver'
alias flac='ruby ~/.bin/convertmp3/convertmp3.rb -b 320 -d ./'
alias update-aliases="wget -q -O - \"$@\" https://alias.sh/user/\$ALIAS_SH_USER_ID/alias\$ALIAS_SH_PRIVATE > $ZSH_CUSTOM/aliases.zsh.cold ; eval 'git diff -- $ZSH_CUSTOM/aliases.zsh.cold' ; echo 'Loogs good? Then run:  \"cp $ZSH_CUSTOM/aliases.zsh.cold $ZSH_CUSTOM/aliases.zsh\"'"