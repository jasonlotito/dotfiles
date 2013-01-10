" vimrc
" 
" I will clean this up.
" I will document it.
set nocompatible

" Colorscheme
let g:solarized_termcolors=256
syntax on
set background=dark
colorscheme solarized

" Setting up Pathogen
call pathogen#infect()

" CtrP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

map <leader> ,

filetype on
filetype plugin indent on

" @todo Create some basic templates for files
" autocmd BufNewFile *.php 0r ~/.vim/templates/php

set backupdir=~/.tmp

" Indentation 
set autoindent
set smartindent
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Scrolling
set scrolloff=8

" General Config
set encoding=utf-8
set showmode
set showcmd
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set rnu
set modeline
set modelines=1

" Wild Menu
set wildmenu
set wildmode=full
set wildignore=*.0,*.obj,*~

" Search
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" So we move up or down on display line rather than one actual line
nnoremap j gj
nnoremap k gk

" Remap ESC
inoremap jj <ESC>

if has("gui_running")
  set guioptions-=T
endif

