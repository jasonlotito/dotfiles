set nocompatible
"colorscheme mine
syntax on

" CtrP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_root_markers = ['~/Projects','~/PhpstormProjects']
"let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']

" Setting up Pathogen
call pathogen#infect()

map <leader> ,
filetype off
filetype plugin indent on

autocmd BufNewFile *.php 0r ~/.vim/templates/php

set modelines=0
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
set background=dark

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

" Display spaces, tabs

"set list
"set listchars=tab:▸\

" So we move up or down on display line rather than one actual line

nnoremap j gj
nnoremap k gk

" Remap ESC

inoremap jj <ESC>

if has("gui_running")
  set guioptions-=T
endif
