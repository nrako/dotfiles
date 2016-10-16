" enable 24 bit color support if supported
if (has("termguicolors"))
	set termguicolors
endif

set t_Co=256                " Explicitly tell vim that the terminal supports 256 colors"

colorscheme tomorrow-night-eighties

" highlights stuffs
set cursorline              " highlight current line
set showmatch               " set show matching parenthesis

" vim-operator-flashy config
hi YankHI term=bold ctermbg=141 ctermfg=0 guibg=#fcf8b3
let g:operator#flashy#flash_time = 200
let g:operator#flashy#group = 'YankHI'
