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

# Function to quickly restore the path and nicely output all paths.
# This is useful after changing ruby versions.
function p() {
  . $HOME/.dotfiles/zsh/path.zsh
  echo $PATH | tr : "\n"
}
