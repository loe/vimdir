filetype off

call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

set nocompatible

set modelines=0

set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

" Backups
set backupdir=~/.vim/tmp/backup/ " backups
set directory=~/.vim/tmp/swap/   " swap files
set backup                        " enable backups

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

vnoremap , <leader>
nnoremap , <leader>

set wrap
set textwidth=79
set t_Co=256
set formatoptions=qrn1

set list
set listchars=tab:▸\ ,eol:¬

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-o> <C-w>o

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

set guifont=Inconsolata:h14
colorscheme railscasts

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>v V`]

inoremap jj <ESC>
inoremap <C-j> <esc>

" yankring.vim
let g:yankring_history_dir = '$HOME/.vim'

" jslint.vim
let $JS_CMD='node'

" CtrlP.vim
let g:ctrlp_map = '<leader>p'

" Powerline.vim
let g:Powerline_symbols = 'fancy'
