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
:set guicursor=n-v:hor1,i:ver1

call plug#begin()

Plug 'https://github.com/preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/preservim/tagbar.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'https://github.com/lervag/vimtex.git'

call plug#end()

nmap <F8> :TagbarToggle<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-j> :tabp<CR>
nnoremap <C-k> :tabn<CR>

let g:gruvbox_termcolors=16

let g:NERDTreeDirArrowExpandable=">"
let g:NERDTreeDirArrowCollapsible="v"
let g:NERDTreeWinPos="right"
let g:NERDTreeQuitOnOpen=1

let g:tagbar_autofocus=1
let g:tagbar_compact=2
let g:tagbar_foldlevel=2

let g:airline_section_y='%{strftime("%H:%M")}'

"Arruma o copy paste.
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

"Colorchme gruv
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme gruvbox

highlight NonText ctermfg=Red guifg=Red guibg=bold
