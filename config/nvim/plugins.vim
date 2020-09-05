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
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' " fuzzy file finder and so much more
Plug 'AndrewRadev/splitjoin.vim' " `gS` to Split a one-line and `gJ` to Join multiline in a single-line statement
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " dark powered asynchronous completion framework for neovim
Plug 'airblade/vim-gitgutter' " some git gutter
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' } " Language Server protocol (i.e used for reason-vim-plus)
Plug 'christoomey/vim-tmux-navigator' " ctr-hjkl navigation between vim and tmux splits
Plug 'editorconfig/editorconfig-vim' " .editorconfig support<Paste>
Plug 'haya14busa/vim-operator-flashy' " flash yanked text
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " distraction-free writing
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' } " focus tool. Good for presentating with vim
Plug 'kana/vim-operator-user' " required for the plugin bellow (vim-operator-flashy)
Plug 'majutsushi/tagbar' " displays tags in a window, ordered by scope
Plug 'mbbill/undotree' " visualize vim undo tree
Plug 'mileszs/ack.vim' " search inside files using ack. Same as command line ack utility, but use :Ack
Plug 'milkypostman/vim-togglelist' " toggle location list or quicfix list
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' " file drawer
Plug 'tpope/vim-commentary' " commentary.vim
Plug 'tpope/vim-fugitive' " amazing git wrapper for vim
Plug 'tpope/vim-rhubarb' " Github plugin for vim-fugitive
Plug 'tpope/vim-repeat' " repeat.vim: enable repeating supported plugin maps with '.'
Plug 'tpope/vim-surround' " parentheses, brackets, quotes, XML tags, and more   (i.e cs'<h1>)
Plug 'vim-airline/vim-airline' " fancy statusline
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline
Plug 'w0rp/ale' " Asynchronous lint engine!
Plug 'wellle/targets.vim' " Vim plugin that provides additional text objects
Plug 'sbdchd/neoformat' " A (Neo)vim plugin for formatting code
Plug 'raghur/vim-ghost', {'do': ':GhostInstall'} " Use your editor write in the browser
Plug 'tkhren/vim-fake' " Vim plugin to generate random dummy/filler text
Plug 'ldong/vim_loremipsum' " Vim plugin that generate Lorem Ipsums
Plug 'janko-m/vim-test' " A Vim wrapper for running tests on different granularities.
Plug 'tpope/vim-dispatch' " dispatch.vim: Asynchronous build and test dispatcher
Plug 'junegunn/vim-easy-align'
Plug 'Asheq/close-buffers.vim' " Quickly close (delete) many buffers.
Plug 'yssl/QFEnter' " QFEnter allows you to open items from Vim's quickfix or location list wherever you wish.

" JavaScript
Plug 'fleischie/vim-styled-components', { 'for': ['jsx', 'javascript'] } " styled-components
Plug 'moll/vim-node', { 'for': 'javascript' } " node support
Plug 'pangloss/vim-javascript', { 'for': ['jsx', 'javascript'] } " Javascript syntax plugin
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['jsx', 'javascript'] } " JSX support
Plug 'alampros/vim-styled-jsx', { 'for': ['jsx', 'javascript'] } " Flow type

" Typescript
Plug 'leafgarland/typescript-vim', { 'for': ['ts', 'tsx', 'typescript'] } " Flow type

" ReasonML
Plug 'reasonml-editor/vim-reason-plus'

" ReScript
Plug 'amiralies/vim-rescript'

" html / templates
Plug 'digitaltoad/vim-jade', { 'for': ['jade', 'pug'] } " jade support
Plug 'mattn/emmet-vim', { 'for': 'html' } " emmet support for vim - easily create markdup wth CSS-like syntax
Plug 'othree/html5.vim', { 'for': 'html' } " html5 support
Plug 'slim-template/vim-slim', { 'for': 'slim' } " slim support

" CSS
Plug 'hostsamurai/CSSMinister.vim', { 'for': ['html', 'css', 'jsx', 'javascript'] }
Plug 'ap/vim-css-color', { 'for': ['html', 'css', 'jsx', 'javascript'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['html', 'css', 'jsx', 'javascript'] }

" Ruby
Plug 'ngmy/vim-rubocop', { 'for': 'ruby'}
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rake', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }

" markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' } " markdown support

" GraphQL
Plug 'jparise/vim-graphql', { 'for': ['jsx', 'javascript', 'graphql'] } " Flow type

" tmux
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }

call plug#end()
