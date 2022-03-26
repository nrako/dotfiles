source ~/.config/nvim/plugins.vim
source ~/.config/nvim/ui.vim
source ~/.config/nvim/keys.vim
source ~/.config/nvim/ctags.vim

set mouse=a                 " enable using the mouse for vim

set noswapfile              " do not write annoying intermediate swap files.

set number                  " show line numbers
set hidden                  " hide buffers instead of closing them this
                            "    means that the current buffer can be put
                            "    to background without being written; and
                            "    that marks and undo history are preserved

" ya all speak English right!
set spell
set spelllang=en_us

" suppress all bells
set novisualbell
set noerrorbells
set vb

" splits
set splitright              " open vertical splits to the right
set splitbelow              " open splits to the bottom

" undos
set undolevels=1000         " use many muchos levels of undo
if v:version >= 730
  set undofile              " persists undo between Vim sessions
  set undodir=~/.config/nvim/undodir
endif

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed     " copy to the system clipboard

  if has("unnamedplus")     " X11 support
    set clipboard+=unnamedplus
  endif
endif

" Tab control
set expandtab               " use spaces no tab!
set tabstop=2               " the visible width of tabs
set softtabstop=2           " edit as if the tabs are 2 characters wide
set shiftwidth=2            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'

set scrolloff=2             " keep x lines off the edges of the screen when scrolling vertically
set sidescrolloff=5         " keep x columns off the edges of the screen when scrolling horizontall

set termguicolors

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
augroup END

" mxw/vim-jsx
let g:jsx_ext_required = 0 " enable JSX in .js file

" milkypostman/vim-togglelist
let g:toggle_list_no_mappings = 1

" AndrewRadev/splitjoin.vim
let g:splitjoin_ruby_hanging_args = 0

" Makes ack.vim use Ag, the silver searcher
let g:ackprg = 'ag --vimgrep --smart-case'
" Ensure fzf use Ag within vim
"let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" Highligh searched term
let g:ackhighlight = 1

" Make grep use Ag, the silver searcher
set grepprg=ag\ --vimgrep

" w0rp/ale
" keep sign gutter open all the time
let g:ale_sign_column_always = 1
let g:ale_echo_msg_format = '%linter%: %s'
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ }

" autozimu/LanguageClient-neovim
" - https://github.com/reasonml-editor/vim-reason-plus
let g:LanguageClient_serverCommands = {
  \ 'reason': ['/Users/nrako/.dotfiles/bin/reason-language-server', '--refmt bsrefmt'],
  \ 'ocaml': ['ocaml-language-server', '--stdio'],
  \ 'ruby': ['solargraph', 'stdio'],
  \ 'typescript': ['javascript-typescript-stdio'],
  \ 'typescript.tsx': ['javascript-typescript-stdio'],
  \ }
" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" https://github.com/sbdchd/neoformat
let g:neoformat_run_all_formatters = 1
augroup fmt
  autocmd!
  au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
augroup END

let g:neoformat_reason_bsrefmt = {
  \ 'exe': 'bsrefmt',
  \ 'stdin': 1,
  \ 'args': ["--interface=" . (expand('%:e') == "rei" ? "true" : "false")],
  \ }

let g:neoformat_enabled_reason = ['bsrefmt']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_typescript = ['prettier']
let g:neoformat_enabled_ruby = []
let g:neoformat_enabled_yaml = []
let g:neoformat_enabled_html = []
let g:neoformat_enabled_sass = []
let g:neoformat_enabled_scss = []

" use the project-local prettier binary
let g:neoformat_try_node_exe = 1

augroup SyntaxSettings
  autocmd!
  autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END

" Make vim-test use dispatch. https://github.com/janko-m/vim-test#strategies
let test#strategy = "dispatch"

" Disable folding for https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1


""" COC related config
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300


" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


""" END of COC related config

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" https://github.com/norcalli/nvim-colorizer.lua
lua require'colorizer'.setup()
