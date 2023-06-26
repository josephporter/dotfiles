" Basics
filetype plugin indent on
syntax on

" Settings
set backspace=start,eol,indent
set hidden
set expandtab
set noswapfile
set path=.,**
set nu
set ruler

" Faster buffer navigation
nnoremap ,b :buffer *

" Fast global commands
nnoremap ,g :g//#<Left><Left>

" Handle Escape
imap jj <Esc>

" convenience mappings
nnoremap ' `
nnoremap : ;
nnoremap ; :
vnoremap : ;
vnoremap ; :

" File Navigation
nnoremap ,f :find *
nnoremap ,v :vert sfind *

" Black Plugin
" autocmd BufWritePre *.py execute ':Black'

" fzf
set rtp+=/usr/local/opt/fzf
