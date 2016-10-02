source ~/.config/nvim/plugins.vim

set nocompatible            " not compatible with vi
set autoread                " detect when a file is changed

set history=1000            " change history to 1000

set noswapfile              " do not write annoying intermediate swap files.

set number                  " show line numbers
set hidden                  " hide buffers instead of closing them this
                            "    means that the current buffer can be put
                            "    to background without being written; and
                            "    that marks and undo history are preserved

" enable 24 bit color support if supported
if (has("termguicolors"))
	set termguicolors
endif

set t_Co=256                " Explicitly tell vim that the terminal supports 256 colors"

colorscheme tomorrow-night-eighties

" Map the leader key to SPACE
let mapleader="\<SPACE>"
nnoremap <SPACE> <Nop>

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
	nmap <Leader>p :GFiles<cr>
	nmap <Leader>c :Commits<cr>
else
	" otherwise, use :FZF
	nnoremap <silent> <C-p> :FZF<CR>
	nnoremap <Leader>p :FZF<cr>
endif

" FZF through history
nmap <silent> <leader>h :History<CR>

" FZF through buffers
nmap <silent> <leader>b :Buffers<CR>

" Tab control
set noexpandtab             " insert tabs rather than spaces for <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2               " the visible width of tabs
set softtabstop=2           " edit as if the tabs are 4 characters wide
set shiftwidth=2            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'

set cursorline              " highlight current line

set scrolloff=2             " keep x lines off the edges of the screen when scrolling vertically
set sidescrolloff=5         " keep x columns off the edges of the screen when scrolling horizontally

" moving up and down work as you would expect (useful for wrapped lines).
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$
