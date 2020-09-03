set nocompatible
"Smart indentation based on file type
filetype indent plugin on
"Sytanx highlighting
syntax on

"Set a leader key
:let mapleader = ","

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
set modelines=0
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

"Left And Right Change Buffers
nnoremap <Left>  :bp<CR>
nnoremap <Right> :bn<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

"---------------------
" Plugin configuration
"---------------------

" nerdtree
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" easymotion
map <Space> <Plug>(easymotion-prefix)

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['pycodestyle']
let g:syntastic_javascript_checkers=['eslint']
nnoremap <Leader>s :SyntasticCheck<CR>
nnoremap <Leader>r :SyntasticReset<CR>
nnoremap <Leader>i :SyntasticInfo<CR>
nnoremap <Leader>m :SyntasticToggleMode<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd  = 'CtrlP'

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Last line
" set showmode
" set showcmd

" clear search
map <Leader><space> :let @/=''<cr>

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
