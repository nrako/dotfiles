source ~/.config/nvim/plugins.vim

set nocompatible            " not compatible with vi
set autoread                " detect when a file is changed

set history=1000            " change history to 1000

set noswapfile              " do not write annoying intermediate swap files.

set number                  " show line numbers

" enable 24 bit color support if supported
if (has("termguicolors"))
	set termguicolors
endif

set t_Co=256                " Explicitly tell vim that the terminal supports 256 colors"

colorscheme tomorrow-night-eighties

" Make Arrow Keys Useful Again
map <down> <ESC>:ccl<CR>
map <up> <ESC>:cope<CR>
map <left> <ESC>:NERDTreeToggle<CR>
map <S-left> <ESC>:NERDTreeFind<CR>
map <S-right> <ESC>:UndotreeToggle<CR>

" Save whenever switching windows or leaving vim. 
au FocusLost,WinLeave * :silent! wa

" Trigger autoread when changing buffers or coming back to vim.
au FocusGained,BufEnter * :silent! !

" Insert mode completion via fzf
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

if isdirectory(".git")
	" if in a git project, use :GFiles
	nmap <silent> <C-p> :GFiles<cr>
else
	" otherwise, use :FZF
	nnoremap <silent> <C-p> :FZF<CR>
endif

" Tab control
set noexpandtab             " insert tabs rather than spaces for <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2               " the visible width of tabs
set softtabstop=2           " edit as if the tabs are 4 characters wide
set shiftwidth=2            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
