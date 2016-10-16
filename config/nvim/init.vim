source ~/.config/nvim/plugins.vim
source ~/.config/nvim/ui.vim
source ~/.config/nvim/keys.vim

set nocompatible            " not compatible with vi
set autoread                " detect when a file is changed

set history=1000            " change history to 1000

set noswapfile              " do not write annoying intermediate swap files.

set number                  " show line numbers
set hidden                  " hide buffers instead of closing them this
                            "    means that the current buffer can be put
                            "    to background without being written; and
                            "    that marks and undo history are preserved

" undos
set undolevels=1000         " use many muchos levels of undo
if v:version >= 730
  set undofile              " persists undo between vim sessions
  set undodir=~/.config/nvim/undodir
endif

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" Tab control
set expandtab               " use spaces no tab!
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2               " the visible width of tabs
set softtabstop=2           " edit as if the tabs are 2 characters wide
set shiftwidth=2            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'

set scrolloff=2             " keep x lines off the edges of the screen when scrolling vertically
set sidescrolloff=5         " keep x columns off the edges of the screen when scrolling horizontall

augroup vimrcautogroup
	autocmd!
  
  " Save whenever switching windows or leaving vim. 
  au FocusLost,WinLeave * :silent! wa

  " Trigger autoread when changing buffers or coming back to vim.
  au FocusGained,BufEnter * :silent! !

	" automatically resize panes on resize
	autocmd VimResized * exe 'normal! \<c-w>='
  
  " source vim config files on save
	autocmd BufWritePost init.vim,plugins.vim,ui.vim,keys.vim source %

	" save all files on focus lost, ignoring warnings about untitled buffers
	autocmd FocusLost * silent! wa

  " run Neomake on save
	autocmd! BufWritePost * Neomake
augroup END
