set nocompatible
"Smart indentation based on file type
filetype indent plugin on
"Sytanx highlighting
syntax on

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

set scrolloff=5 " show lines above and below cursor (when possible)
set hls " highlight search
set hidden " allow auto-hiding of edited buffers
set timeout timeoutlen=1000 ttimeoutlen=100 " fix slow O inserts
set autochdir " automatically set current directory to directory of last opened file
set nojoinspaces " suppress inserting two spaces between sentences
set wildmenu
set showcmd
set nomodeline
" smart case-sensitive search
set ignorecase
set smartcase

set ruler
set laststatus=2
set confirm
set visualbell " turn off bell sound
set mouse+=a " enable mouse mode (scrolling, selection, etc)
set cmdheight=2
set pastetoggle=<f11>    
" use 4 spaces instead of tabs during formatting
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
" turn on line numbering
set nu rnu
set shortmess+=I " disable startup mesage
set backspace=indent,eol,start
set incsearch " incremental search (as string is being typed)

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

"---------------------
" Plugin configuration
"---------------------

" nerdtree
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" easymotion
map <Space> <Plug>(easymotion-prefix)

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ 'mode': 'passive',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': []
\}
nnoremap <Leader>s :SyntasticCheck<CR>
nnoremap <Leader>r :SyntasticReset<CR>
nnoremap <Leader>i :SyntasticInfo<CR>
nnoremap <Leader>m :SyntasticToggleMode<CR>

