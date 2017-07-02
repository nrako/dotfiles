" Map the leader key to SPACE
let mapleader="\<SPACE>"
nnoremap <SPACE> <Nop>

" Make Arrow Keys Useful Again
map <down> <ESC>:call ToggleLocationList()<CR>
map <up> <ESC>:call ToggleQuickfixList()<CR>
map <left> <ESC>:NERDTreeToggle<CR>
map <S-left> <ESC>:NERDTreeFind<CR>
map <S-right> <ESC>:UndotreeToggle<CR>
map <right> <ESC>:TagbarToggle<CR>

" Use TAB to toggle NERDTree
map <Tab> :NERDTreeToggle<CR>
map <S-Tab> :NERDTreeFind<CR>

" Insert mode completion via fzf
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

if isdirectory(".git")
  " if in a git project, use :GFiles
  nmap <silent> <C-p> :GFiles<CR>
  nmap <Leader>p :GFiles<CR>
  nmap <Leader>gc :Commits<CR>
  nmap <leader>gb :Gblame<CR>
  nmap <leader>gs :Gstatus<CR>
  nmap <leader>gd :Gdiff<CR>
  nmap <leader>gw :Gwrite<CR>
else
  " otherwise, use :FZF
  nnoremap <silent> <C-p> :FZF<CR>
  nnoremap <Leader>p :FZF<CR>
endif

" FZF
nmap <silent> <leader>t :FZF<CR>

" FZF through history
nmap <silent> <leader>h :History<CR>

" FZF through buffers
nmap <silent> <leader>b :Buffers<CR>

" vertical navigation with Alt
map <A-j> <C-d>
map <A-k> <C-u>

" CMD navigation for tabs and scroll with iTerm2 hex codes key remapping
" next tab iTerm2 send Hex codes 0x17 0x0C
map <C-w><C-l> <ESC>:tabn<CR>
imap <C-w><C-l> <ESC>:tabn<CR>
" previous tab iTerm2 send Hex codes 0x17 0x08
map <C-w><C-h> <ESC>:tabp<CR>
imap <C-w><C-h> <ESC>:tabp<CR>
" new tab iTerm2 send Hex codes 0x17 0x14
map <C-w><C-t> <ESC>:tabnew<CR>
imap <C-w><C-t> <ESC>:tabnew<CR>
" close tab iTerm2 send Hex codes 0x17 0x17
map <C-w><C-w> <ESC>:tabclose<CR>
imap <C-w><C-w> <ESC>:tabclose<CR>
" paragraph down iTerm2 send Hex codes 0x17 0x0A
map <C-w><C-j> <S-}>
imap <C-w><C-j> <ESC><S-}>
" paragraph up iTerm2 send Hex codes 0x17 0x0B
map <C-w><C-k> <S-{>
imap <C-w><C-k> <ESC><S-{>

" CMD search with iTerm2 hey codes key remapping
" search current file iTerm2 send Hex codes 0x17 0x06 (ctrl-f) for cmd+f
map <C-w><C-f> <ESC>/
vmap <C-w><C-f> y/<C-R>"
" search current file iTerm2 send Hex codes 0x17 0x02 (ctrl-b) for cmd+shift+f
map <C-w><C-b> :Ag<space>
vmap <C-w><C-b> y:Ag<space><C-R>"
" search next misspelling iTerm2 send Hex codes 0x17 0x3b (;) for cmd+; (match MacOS)
map <C-w>; <ESC>]s
vmap <C-w>; ]s
" display the spelling options iTerm2 send Hex codes 0x17 0x3a (:) for cmd+: (match MacOS)
map <C-w>: <ESC>z=
vmap <C-w>: z=

" makes vim-tmux-navigator works in insert mode but only for horizontal
" navigation to preserve CTRL-K (Delete between insertion point and end of
" line)
imap <C-h> <ESC><C-h>
imap <C-l> <ESC><C-l>

" moving up and down work as you would expect (useful for wrapped lines).
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" Make yank all flashy thanks to vim-operator-flashy
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

" open alternate file in split
nnoremap <leader>av :vsp\|A<CR>
nnoremap <leader>as :sp\|A<CR>

" go to insert with an empty line above and below
nmap <leader>o o<CR><CR><Up>
" go to insert with an empty line above and below
nmap <leader>O O<CR><CR><Up>

" save with ctrl-s
noremap <C-s> <ESC>:w<CR>
" save with ctrl-s while in insert mode
inoremap <C-s> <ESC>:w<CR>li
