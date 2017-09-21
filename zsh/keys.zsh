# To find out what the escaped key combination is, open a shell and press ^V
# followed by the combination.

bindkey -v

bindkey '^R' history-incremental-search-backward

bindkey '^P' up-line-or-search
bindkey '^N' down-line-or-search

# Only kill from start to cursor instead of whole line.
bindkey '^U' backward-kill-line

# Make space automatically expand stuff such as "sudo !!".
bindkey ' ' magic-space

# Make shift-tab select the previous item in the completion menu.
bindkey '^[[Z' reverse-menu-complete

# Make the delete key work instead of outputting a ~.
bindkey "^[[3~" delete-char
