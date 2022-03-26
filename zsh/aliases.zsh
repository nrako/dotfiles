# ls, the common ones I use a lot shortened for rapid fire usage
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

# Git
alias g='git'
alias gc='git commit'
alias gl="git log --graph --full-history --pretty=format:'%Cred%h%Creset -%Cgreen%d%Creset %s %Cblue(%cr)%Creset <%ae>' --abbrev-commit --date=relative"
alias gla="git log --graph --full-history --all --pretty=format:'%Cred%h%Creset -%Cgreen%d%Creset %s %Cblue(%cr)%Creset <%ae>' --abbrev-commit --date=relative --branches"
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias lg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
# git log for markdown format i.e Github PR, typical usage: glmd master..HEAD | pbcopy
alias glmd="git log --reverse --pretty='**%s**%n%h &lt;%an&gt; %aD%n%n%w(80,4,4)%b %w(0)%n'"
alias gcaa='git commit -a --amend -C HEAD'
alias gst='git status'
alias gcp='git commit -p'
alias gap='git add -p'
alias gai='git add -i'
alias gco='git checkout'
alias g-='git checkout -'
alias gp='git pull'

alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"

alias json="python -mjson.tool"

alias ios="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"

alias lf='/bin/ls -rt|tail -n1'

alias sulast='sudo $(history -p !-1)'

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
alias dk='docker'
alias di='docker images'
alias dp='docker ps'
alias dpa='docker ps -a'
alias drmi='docker rmi $(docker images --filter dangling=true --quiet)'
alias dki="docker run -t -i -P"
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias dm='docker-machine'
alias dc='docker-compose'
alias simulator="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
