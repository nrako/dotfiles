" for .gitconfig.local and gitconfig.symlink
augroup filetypedetect
	au BufRead,BufNewFile ?gitconfig.* setfiletype gitconfig
augroup END

" for tmux.conf.symlink
augroup filetypedetect
	au BufRead,BufNewFile tmux.conf.* setfiletype tmux
augroup END
