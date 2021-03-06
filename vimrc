set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdcommenter'
Plugin 'myusuf3/numbers.vim'
Plugin 'mtth/scratch.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-endwise'
Plugin 'powerline/powerline'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'chrismetcalf/vim-yankring'
Plugin 'fatih/vim-go'
Plugin 'hhvm/vim-hack'
Plugin 'mxw/vim-xhp'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'solarnz/thrift.vim'
call vundle#end()

filetype plugin indent on
syntax enable

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set foldlevel=10

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
set number

" Disable Swap and Backups
set nobackup
set nowritebackup

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
set background=dark
colorscheme solarized

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>v V`]

inoremap jj <ESC>
inoremap <C-j> <esc>

" numbers.vim
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" yankring.vim
let g:yankring_history_dir = '$HOME/.vim'

" CtrlP.vim
let g:ctrlp_map = '<leader>p'

" Powerline.vim
let g:Powerline_symbols = 'fancy'

" Python-mode
" Disable folding, causes vim to be very slow!
let g:pymode_folding = 0
" Tame the linter, just want PEP8.
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pep8']
let g:pymode_lint_on_fly = 0
let g:pymode_lint_unmodified = 0
let g:pymode_lint_on_write = 0
" Use 80 character lines.
let g:pymode_options_max_line_length = 80
" Disablke rope and friends.
let g:pymode_rope = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_lookup_project = 0
nnoremap <leader>p :PymodeLint<cr>

com! FormatJSON %!python -m json.tool

" Filetypes
au BufNewFile,BufRead *.cconf,*.cinc,*.tw  set filetype=python
