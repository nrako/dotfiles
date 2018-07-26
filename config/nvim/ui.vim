if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" highlights stuffs
set cursorline              " highlight current line
set showmatch               " set show matching parenthesis

" haya14busa/vim-operator-flashy config
let g:operator#flashy#flash_time = 200
let g:operator#flashy#group = 'YankHI'

" minimal gutter
set foldcolumn=1

" minimal split separator style
set fillchars+=vert:│

" highlights customization
function! s:base16_customize() abort

  " minimal gutter
  call Base16hi("FoldColumn", g:base16_gui03, g:base16_gui01, g:base16_cterm03, "None", "", "")
  call Base16hi("SignColumn", g:base16_gui03, g:base16_gui01, g:base16_cterm03, "None", "", "")
  call Base16hi("GitGutterAdd", "", g:base16_gui01, "", "None", "", "")
  call Base16hi("GitGutterChange", "", g:base16_gui01, "", "None", "", "")
  call Base16hi("GitGutterDelete", "", g:base16_gui01, "", "None", "", "")
  call Base16hi("LineNr", g:base16_gui03, g:base16_gui01, g:base16_cterm02, "None", "", "")

  " minimal split separator style
  call Base16hi("VertSplit", g:base16_gui03, g:base16_gui01, g:base16_cterm01, "None", "", "")

  " tone down end of buffer (~) line
  call Base16hi("EndOfBuffer", g:base16_gui03, g:base16_gui01, g:base16_cterm01, "None", "", "")

  " haya14busa/vim-operator-flashy config
  call Base16hi("YankHI", g:base16_gui00, g:base16_gui0A, g:base16_cterm00, g:base16_cterm0A, "bold", "")

  " italic comments
  call Base16hi("Comment", "", "", "", "", "italic", "")

  " just underline SpellBad highlighting group
  call Base16hi("SpellBad",     "", "", "", g:base16_cterm00, "underline", g:base16_gui08)
  call Base16hi("SpellLocal",   "", "", "", g:base16_cterm00, "underline", g:base16_gui0C)
  call Base16hi("SpellCap",     "", "", "", g:base16_cterm00, "underline", g:base16_gui0D)
  call Base16hi("SpellRare",    "", "", "", g:base16_cterm00, "underline", g:base16_gui0E)
endfunction

call s:base16_customize()

augroup on_change_colorschema
  autocmd!
  autocmd ColorScheme * call s:base16_customize()
augroup END


" Customize vim-airline statusline
" https://github.com/vim-airline/vim-airline/blob/master/doc/airline.txt
let g:airline_detect_spell=0

" short mode display
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ 't'  : 'T',
      \ }

" only show line number and column
let g:airline_section_z = '%l:%v'
" only show the branch in the VCS section
let g:airline_section_b = ' %{fugitive#head(8)}'
