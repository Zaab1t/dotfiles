call plug#begin('~/.config/nvim/bundle')
Plug 'benekastah/neomake'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rust-lang/rust.vim'
call plug#end()

set nocompatible
"set t_Co=256
filetype plugin indent on
syntax enable
colorscheme ron

set number
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nobackup
set noswapfile
set wrap
set path+=**  " this is brilliant
set background=dark
set encoding=utf-8
set showmatch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab  " tabs are spaces
set colorcolumn=80


" move by visual line
nnoremap j gj
nnoremap k gk

" Enables the special status bar and puts a tab list up top.
set laststatus=2
let g:airline_theme='lucius'
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
autocmd BufNewFile,BufRead *.th  set syntax=clojure

command Config execute 'e ~/.config/nvim/init.vim'
command W execute 'w'
command Q execute 'q'

" allows jump to definition
map <f12> :!ctags -R .<cr>
