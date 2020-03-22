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

" Use Leader(space) TAB to toggle NERDTree
" TODO: use D-B (CMD+B) instead, àla VSCode?
map <Leader><Tab> :NERDTreeToggle<CR>
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
vmap <C-w><C-f> y/<C-R>"<CR>
" search current file iTerm2 send Hex codes 0x17 0x02 (ctrl-b) for cmd+shift+f
map <C-w><C-b> :Ack!<space>
vmap <C-w><C-b> y:Ack!<space>-Q<space>'<C-R>"'<CR>
" search next misspelling iTerm2 send Hex codes 0x17 0x3b (;) for cmd+; (match MacOS)
map <C-w>; <ESC>]s
vmap <C-w>; ]s
" display the spelling options iTerm2 send Hex codes 0x17 0x3a (:) for cmd+: (match MacOS)
map <C-w>: <ESC>z=
vmap <C-w>: z=

" Search (highlight) visual selection with //
vnoremap // y/<C-R>"<CR>
" Start a Ack search visual selection with g/
" add file type... `--vim` `--js` `--sass` `--ruby` `--yaml`
" or add file pattern... `test/**/*.js`
vnoremap g/ y:Ack!<space>-Q<space>'<C-R>"'
" Start a search replace with visual selection with r/
vnoremap r/ y:%s/<C-R>"/

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

" vim-reason-plus https://github.com/reasonml-editor/vim-reason-plus#configuration
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
nnoremap <silent> gF :call LanguageClient_textDocument_formatting()<cr>
nnoremap <silent> K :call LanguageClient_textDocument_hover()<cr>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nnoremap <F5> :call LanguageClient_contextMenu()<CR>

" janko-m/vim-test https://github.com/janko-m/vim-test
nmap <Leader>N :TestNearest<CR>
nmap <Leader>F :TestFile<CR>
nmap <Leader>S :TestSuite<CR>
nmap <Leader>L :TestLast<CR>
nmap <Leader>V :TestVisit<CR>

" More intuitive keymaps for pane resizing
map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>

" Some Emacs style keymaps in Command mode
" NOTE: on missing Emacs style keymaps
"  - <C-f> conflicts with vim access to command line window
"  - <C-b> conflicts with vim going to the beginning of line
"  - <C-e> already go to the end of line in vim
cmap <C-a> <Home>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-k> <C-f>D<C-c><C-c>:<Up>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>

" Emacs style keymaps in Insert mode (mostly to be friendly for code pairing)
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <C-b>
imap <C-e> <End>
imap <C-d> <Del>
imap <C-h> <BS>
imap <M-b> <S-Left>
imap <M-f> <S-Right>

" debug syntax highligh with F10
" http://vim.wikia.com/wiki/Identify_the_syntax_highlighting_group_used_at_the_cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


" https://github.com/junegunn/vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
