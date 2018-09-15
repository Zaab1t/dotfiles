set nocompatible
set t_Co=16
filetype plugin indent on
syntax enable

set number
set incsearch
set nohlsearch
set ignorecase
set smartcase
set path+=**  " this is brilliant
set background=dark
set encoding=utf-8
set showmatch
set undofile
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab  " tabs are spaces
set colorcolumn=80

" only 2 space indent in ruby, apparently
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" Wraps text at 80, but not source code
set tw=79
set nowrap
set fo-=t

" No clutter
set backupdir=~/.config/nvim/backup/
set directory=~/.config/nvim/swap/
set undodir=~/.config/nvim/undo/


" move by visual line
nnoremap j gj
nnoremap k gk

" File browsing tree
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^|\s\s\)\zs\.\S\+'

command Config execute 'e ~/.config/nvim/init.vim'
command W execute 'w'
command Q execute 'q'

" allows jump to definition
map <f12> :!ctags -R .<cr>
