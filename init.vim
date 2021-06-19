"TODO fix rls integration for linting and racer for autocomplete
call plug#begin(stdpath('data') . '/plugged')
Plug 'dense-analysis/ale' "Asynchronous Linter
"Plug 'jiangmiao/auto-pairs' "Automatically pairs various paired characters
Plug 'junegunn/fzf', {'do': { -> fzf#install() }} "Installs fuzzy-file-finder fzf
Plug 'junegunn/fzf.vim' "Allows use of fzf in vim
Plug 'preservim/nerdcommenter' "Toggle commenting
Plug 'preservim/nerdtree' "GUI file browser
Plug 'rust-lang/rust.vim' "rustlang integration for vim
Plug 'prettier/vim-prettier' "prettier integration for vim
Plug 'chriskempson/base16-vim' "color schemes for vim
Plug 'MaxMEllon/vim-jsx-pretty' "color schemes for vim
Plug 'airblade/vim-rooter' "Sets to git root with whatever file is being used
Plug 'ncm2/ncm2' "Autocompletion for nvim
Plug 'roxma/nvim-yarp' "Dependency for ncm2
Plug 'ncm2/ncm2-path' "Path autocompletion
Plug 'ncm2/ncm2-bufword' "Current buffer auto-complete
Plug 'ncm2/ncm2-cssomni' "Css auto-complete
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'base install.sh',
    \ }
call plug#end()

set nocompatible

set mouse=a


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

"ncm2 settings
autocmd BufEnter * call ncm2#enable_for_buffer()

"Ncm2PopOpen for more information
set completeopt=noinsert,menuone,noselect

"Use <Tab> to select the popup menu
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Vim Color Scheme from base-16
colorscheme base16-ashes
let base16colorspace=256 "Access colors present in 256 colorspace
set termguicolors

" nerdtree
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" Ale Settings
let g:ale_exclude_highlights = '/./'
nmap <silent> <Leader>s <Plug>(ale_next_wrap)
nnoremap <Leader>r :ALELint
nnoremap <Leader>i :ALEInfo<CR>
nnoremap <Leader>m :ALEToggle
let g:ale_linters = {'rust': ['analyzer']}
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers =  {'javascript': ['prettier']}
let g:ale_fixers =  {'rust': ['rustfmt']}
let g:ale_fix_on_save = 1


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

"fzf 

" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
" If installed using git

" set rtp+=~/.fzf

" Bind '//' to a fzf-powered buffer search
nmap // :Buffers<CR>

" Bind '??' to a fzf-powered project search
nmap ?? :Rg!<CR>

" Bind "<c-p>" to a fzf-powered filename search
nmap <c-p> :Files!<CR>

" Bind "cc" to a fzf-powered command search
nmap cc :Commands!<CR>

" Rust formant
nmap <leader>c :RustFmt<CR>

"Python3 support
"For Mac it is usr/local/bin for ubuntu it is usr/bin
let g:python3_host_prog='/usr/local/bin/python3'

" Language Client Setup
let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\}
