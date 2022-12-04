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

call plug#begin()

Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'

" LSP plugins
Plug 'neovim/nvim-lspconfig'
" CMP plugins
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-vsnip'

call plug#end()

lua require('mod/init')
