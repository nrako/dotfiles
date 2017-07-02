" helper Cond function https://github.com/junegunn/vim-plug/wiki/faq#conditional-activation
function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction


call plug#begin('~/.config/nvim/plugged')

" colorschemes
Plug 'chriskempson/base16-vim'

" a must, but only for vim, nvim has the same default built-in.
Plug 'tpope/vim-sensible', Cond(!has('nvim'))

" utilities
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' " file drawer
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' " fuzzy file finder and so much more
Plug 'tpope/vim-fugitive' " amazing git wrapper for vim
Plug 'editorconfig/editorconfig-vim' " .editorconfig support<Paste>
Plug 'vim-airline/vim-airline' " fancy statusline
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline
Plug 'airblade/vim-gitgutter' " some git gutter
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " distraction-free writing
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' } " focus tool. Good for presentating with vim
Plug 'mbbill/undotree' " visualize vim undo tree
Plug 'tpope/vim-surround' " parentheses, brackets, quotes, XML tags, and more   (i.e cs'<h1>)
Plug 'mileszs/ack.vim' " search inside files using ack. Same as command line ack utility, but use :Ack
Plug 'kana/vim-operator-user' " required for the plugin bellow (vim-operator-flashy)
Plug 'haya14busa/vim-operator-flashy' " flash yanked text
Plug 'w0rp/ale' " Asynchronous lint engine!
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " dark powered asynchronous completion framework for neovim
Plug 'christoomey/vim-tmux-navigator' " ctr-hjkl navigation between vim and tmux splits
Plug 'milkypostman/vim-togglelist' " toggle location list or quicfix list
Plug 'majutsushi/tagbar' " displays tags in a window, ordered by scope
Plug 'AndrewRadev/splitjoin.vim' " `gS` to Split a one-line and `gJ` to Join multiline in a single-line statement

" JavaScript
Plug 'moll/vim-node', { 'for': 'javascript' } " node support
Plug 'pangloss/vim-javascript', { 'for': ['jsx', 'javascript'] } " Javascript syntax plugin
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['jsx', 'javascript'] } " JSX support
Plug 'fleischie/vim-styled-components', { 'for': ['jsx', 'javascript'] } " styled-components
Plug 'flowtype/vim-flow', { 'for': ['jsx', 'javascript'] } " Flow type
Plug 'alampros/vim-styled-jsx', { 'for': ['jsx', 'javascript'] } " Flow type

" html / templates
Plug 'mattn/emmet-vim', { 'for': 'html' } " emmet support for vim - easily create markdup wth CSS-like syntax
Plug 'othree/html5.vim', { 'for': 'html' } " html5 support
Plug 'digitaltoad/vim-jade', { 'for': ['jade', 'pug'] } " jade support
Plug 'slim-template/vim-slim', { 'for': 'slim' } " slim support

" Ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rake', { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop', { 'for': 'ruby'}

" markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' } " markdown support

" tmux
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }

call plug#end()
