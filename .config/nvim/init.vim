" Plugins

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'idris-hackers/idris-vim'
Plug 'joshdick/onedark.vim'
Plug 'caenrique/nvim-toggle-terminal'
call plug#end()

" GENERAL

set nocompatible
filetype plugin on
filetype plugin indent on

" html tags matching with %
runtime macros/matchit.vim 

nnoremap <SPACE><NOP>
let mapleader=" "

if has('mouse')
    set mouse=a
endif
set autoread  " autoload when a file changes
set history=1000
set backspace=indent,eol,start " normal working for backspace

set shiftwidth=4 softtabstop=4 expandtab

set ignorecase
set smartcase 
set hlsearch    " highlight search results
set incsearch   " incremental search
set nolazyredraw    " dont redraw while doing macros
set autoindent

" LOOKS

set number
syntax on
set showcmd     " shows the vim command being executed/typed
set title       " show the title of file at the title bar
colorscheme onedark

" BUFFERS AND FILE NAVIGATION

set splitbelow
set hidden                          " can put current buffer in background without saving
" show buffer list and then put in buffer list search mode
nnoremap gb :ls<CR>:b 
" Ctrl-P using native functionality
nnoremap <C-p> :find **/*

set wildignorecase
set wildmenu
set wildmode=list:full

" Tim Popes unimpaired has same mappings 
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> [a :next<CR>
nnoremap <silent> ]a :prev<CR>
" Remap %% %:h in commandline to provide easy relative path for current buffer
" cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'


set matchpairs+=<:>

nnoremap <C-k> :resize +1<CR>
nnoremap <C-j> :resize -1<CR>
nnoremap <C-l> :vertical resize -1<CR>
nnoremap <C-h> :vertical resize +1<CR>

nnoremap <leader>, :nohl<CR>

" TERMINAL

tnoremap <Esc> <C-\><C-n>

" cool syntax highlighting
" runtime './syntax/cool.vim'
" au BufRead,BufNewFile *.cl set filetype=cool

nnoremap <silent> <C-z> :sp<CR>:ToggleTerminal<CR>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<CR>:q<CR>
