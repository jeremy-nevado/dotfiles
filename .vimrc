set nocompatible
"Smart indentation based on file type
filetype indent plugin on
"Sytanx highlighting
syntax on

set hidden
set wildmenu
set showcmd
set nomodeline
set ignorecase
set smartcase
set ruler
set laststatus=2
set confirm
set visualbell
set mouse=a
set cmdheight=2
set pastetoggle=<f11>    

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" turn on line numbering
set nu rnu

set shortmess+=I
set backspace=indent,eol,start
set incsearch
nmap Q <Nop>

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

