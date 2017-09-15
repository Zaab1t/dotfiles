call plug#begin('~/.config/nvim/bundle')
Plug 'benekastah/neomake'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
call plug#end()

set t_Co=256
set nocompatible
syntax enable
filetype plugin indent on
colorscheme solarized

set number
set incsearch
set ignorecase
set smartcase
set nohlsearch
set nobackup
set noswapfile
set nowrap
set path+=**  " this is brilliant
set background=dark
set encoding=utf-8

" Enables the special status bar and puts a tab list up top.
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" File browsing tree
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^|\s\s\)\zs\.\S\+'

let g:neomake_python_python_exe = 'python3'
let g:neomake_python_enabled_makers = ['flake8']

autocmd BufWritePost,BufReadPost * Neomake

command Config execute 'e ~/.config/nvim/init.vim'
