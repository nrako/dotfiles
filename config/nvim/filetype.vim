" for .gitconfig.local and gitconfig.symlink
augroup filetypedetect
	au BufRead,BufNewFile ?gitconfig.* setfiletype gitconfig
augroup END

" for tmux.conf.symlink
augroup filetypedetect
	au BufRead,BufNewFile tmux.conf.* setfiletype tmux
augroup END

" for MDX (Markdown) https://github.com/mdx-js/mdx
augroup filetypedetect
	au BufRead,BufNewFile *.mdx setfiletype markdown
augroup END

