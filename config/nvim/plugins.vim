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
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' } " Language Server protocol (i.e used for reason-vim-plus)
Plug 'editorconfig/editorconfig-vim' " .editorconfig support<Paste>
Plug 'haya14busa/vim-operator-flashy' " flash yanked text
Plug 'kana/vim-operator-user' " required for the plugin bellow (vim-operator-flashy)
Plug 'mileszs/ack.vim' " search inside files using ack. Same as command line ack utility, but use :Ack
Plug 'milkypostman/vim-togglelist' " toggle location list or quicfix list
Plug 'tpope/vim-commentary' " commentary.vim
Plug 'tpope/vim-repeat' " repeat.vim: enable repeating supported plugin maps with '.'
Plug 'tpope/vim-surround' " parentheses, brackets, quotes, XML tags, and more   (i.e cs'<h1>)
Plug 'w0rp/ale' " Asynchronous lint engine!
Plug 'wellle/targets.vim' " Vim plugin that provides additional text objects
Plug 'sbdchd/neoformat' " A (Neo)vim plugin for formatting code
Plug 'raghur/vim-ghost', {'do': ':GhostInstall'} " Use your editor write in the browser
Plug 'tkhren/vim-fake' " Vim plugin to generate random dummy/filler tex
Plug 'nicwest/vim-camelsnek' " Vim plugin to change cases (e.g form snake_case to pascalCase)
Plug 'terryma/vim-expand-region' " Vim plugin that allows you to visually select increasingly larger regions of text using the same key combination

" utilities for neovim only (not compatible with VSCode)
Plug 'airblade/vim-gitgutter', Cond(!exists('g:vscode')) " some git gutter
Plug 'christoomey/vim-tmux-navigator', Cond(!exists('g:vscode')) " ctr-hjkl navigation between vim and tmux splits
Plug 'junegunn/goyo.vim', Cond(!exists('g:vscode'), { 'on': 'Goyo' }) " distraction-free writing
Plug 'junegunn/limelight.vim', Cond(!exists('g:vscode'), { 'on': 'Limelight' }) " focus tool. Good for presentating with vim
Plug 'majutsushi/tagbar', Cond(!exists('g:vscode')) " displays tags in a window, ordered by scope
Plug 'mbbill/undotree', Cond(!exists('g:vscode')) " visualize vim undo tree
Plug 'tpope/vim-fugitive', Cond(!exists('g:vscode')) " amazing git wrapper for vim
Plug 'tpope/vim-rhubarb', Cond(!exists('g:vscode')) " Github plugin for vim-fugitive
Plug 'vim-airline/vim-airline', Cond(!exists('g:vscode')) " fancy statusline
Plug 'vim-airline/vim-airline-themes', Cond(!exists('g:vscode')) " themes for vim-airline
" Plug 'github/copilot.vim', Cond(!exists('g:vscode')) " Github Copilot
Plug 'Exafunction/codeium.vim', Cond(!exists('g:vscode')) " Codenium

 " file drawer
Plug 'scrooloose/nerdtree', Cond(!exists('g:vscode'), { 'on': ['NERDTreeToggle', 'NERDTreeFind'] })
Plug 'Xuyuanp/nerdtree-git-plugin', Cond(!exists('g:vscode'))
Plug 'ryanoasis/vim-devicons', Cond(!exists('g:vscode'))


" Auto completion COC
Plug 'neoclide/coc.nvim', Cond(!exists('g:vscode'), { 'branch': 'release' })

" JavaScript
" Plug 'fleischie/vim-styled-components', { 'for': ['jsx', 'javascript'] } " styled-components
Plug 'moll/vim-node', { 'for': 'javascript' } " node support
Plug 'pangloss/vim-javascript' " Javascript syntax plugin
Plug 'MaxMEllon/vim-jsx-pretty' " JSX support
" Plug 'alampros/vim-styled-jsx', { 'for': ['jsx', 'javascript'] } " Flow type

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

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
Plug 'norcalli/nvim-colorizer.lua'
Plug 'hail2u/vim-css3-syntax', { 'for': ['html', 'css', 'jsx', 'javascript'] }

" Ruby
Plug 'ngmy/vim-rubocop', { 'for': 'ruby'}
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rake', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }

" markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } " markdown support

" GraphQL
Plug 'jparise/vim-graphql', { 'for': ['jsx', 'javascript', 'typescript', 'typescriptreact', 'graphql'] } " Flow type

" tmux
Plug 'tmux-plugins/vim-tmux', Cond(!exists('g:vscode'), { 'for': 'tmux' })

" CPP
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }

" Random
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'eandrju/cellular-automaton.nvim' " <Leader>fml      (ZZ to stop)

call plug#end()
