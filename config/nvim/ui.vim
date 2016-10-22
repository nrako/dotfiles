if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" highlights stuffs
set cursorline              " highlight current line
set showmatch               " set show matching parenthesis

" vim-operator-flashy config
hi YankHI term=bold ctermbg=141 ctermfg=0 guibg=#fcf8b3
let g:operator#flashy#flash_time = 200
let g:operator#flashy#group = 'YankHI'

" italic comments
hi Comment cterm=italic
