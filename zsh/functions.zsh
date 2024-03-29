fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

# Delete local branches that were already merged.
function git_prune_local_branches() {
  branches=$(git branch --merged | grep -E -v "(master|main)")
  if [[ $1 = "-f" ]]; then
    echo $branches | xargs git branch -d
  else
    echo 'Would delete (call with -f to delete):'
    echo $branches
  fi
}

# # Delete remote merged branches that were already merged.
# function git_prune_remote_branches() {
#   flag=$1
#   branches=`git branch -r --merged origin/master | grep 'origin/' | sed '/master/d'`
#   if [[ $flag = "-f" ]]
#   then
#     branches=`echo $branches | sed "s/origin\//:/g"`
#     git push origin $branches
#     git remote prune origin
#   else
#     for branch in `echo $branches`
#     do
#       echo "Would delete $branch"
#     done
#   fi
# }

# cd into current opened folder in Finder
cf() {
  cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')"
}

function b2d {
  eval "$(boot2docker shellinit)"
}
function dme {
  eval "$(docker-machine env $1)"
  sudo sed -i '' -E "s/^ *[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+( +$1.machine)/$(docker-machine ip $1)\1/" /etc/hosts
}
function trash {
  mv $1 ~/.Trash/
}

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


# Tails
t() {
  tail -f $1 | perl -pe "s/$2/\e[1;31;43m$&\e[0m/g"
}

m () {  # Switch to main or master branch
  git branch --list | grep ' master$'
  if   [[ $? -eq 0 ]]; then git switch master
  elif [[ $? -ne 0 ]]; then git branch --list | grep ' main$'
    if [[ $? -eq 0 ]]; then git switch main; fi
  else  # neither exists
    git switch -c main
  fi
}
