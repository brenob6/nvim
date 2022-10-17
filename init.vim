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

call plug#begin()

Plug 'https://github.com/preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'ayu-theme/ayu-vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Toggle nerd tree view
nnoremap <C-t> :NERDTreeToggle<CR>

" Navigate between tabs
nnoremap <C-j> :tabp<CR>
nnoremap <C-k> :tabn<CR>

let ayucolor="dark"

" NERDTree config
let g:NERDTreeMinimalUI=1
let g:NERDTreeWinPos="right"
let g:NERDTreeQuitOnOpen=1

let g:airline_section_y='%{strftime("%H:%M")}'

colorscheme ayu
