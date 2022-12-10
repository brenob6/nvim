:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=n
:set splitright
:set clipboard+=unnamedplus
:set shortmess+=c
:set complete+=i
:set background=dark
:set guicursor=v:block-highlight,i:ver1
:set termguicolors
:set cursorline
:set completeopt=menu,menuone,noselect
:set textwidth=80

:colorscheme ayu

call plug#begin()

Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'

call plug#end()


lua require('mod/init')
