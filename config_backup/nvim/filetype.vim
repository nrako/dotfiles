" for .gitconfig.local and gitconfig.symlink
augroup filetypedetect
	au BufRead,BufNewFile ?gitconfig.* setfiletype gitconfig

" for tmux.conf.symlink
	au BufRead,BufNewFile tmux.conf.* setfiletype tmux

" for MDX (Markdown) https://github.com/mdx-js/mdx
	au BufRead,BufNewFile *.mdx setfiletype markdown

" set filetypes as typescriptreact
  " au! BufRead,BufNewFile *.tsx,*.jsx setfiletype typescriptreact
augroup END
