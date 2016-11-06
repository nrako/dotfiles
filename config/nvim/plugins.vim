call plug#begin('~/.config/nvim/plugged')

" colorschemes
Plug 'chriskempson/base16-vim'

" must
Plug 'tpope/vim-sensible'

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
Plug 'neomake/neomake' " make and linting framework for neovim!
Plug 'christoomey/vim-tmux-navigator' " ctr-hjkl navigation between vim and tmux splits
Plug 'milkypostman/vim-togglelist' " toggle location list or quicfix list

" JavaScript
Plug 'gavocanov/vim-js-indent', { 'for': 'javascript' } " JavaScript indent support
Plug 'moll/vim-node', { 'for': 'javascript' } " node support
Plug 'pangloss/vim-javascript', { 'for': ['jsx', 'javascript'] } " Javascript syntax plugin
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['jsx', 'javascript'] } " JSX support

" html / templates
Plug 'mattn/emmet-vim', { 'for': 'html' } " emmet support for vim - easily create markdup wth CSS-like syntax
Plug 'othree/html5.vim', { 'for': 'html' } " html5 support
Plug 'digitaltoad/vim-jade', { 'for': ['jade', 'pug'] } " jade support
Plug 'slim-template/vim-slim', { 'for': 'slim' } " slim support

" Ruby
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rake', { 'for': 'ruby' }

" markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' } " markdown support

" tmux
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }

call plug#end()
