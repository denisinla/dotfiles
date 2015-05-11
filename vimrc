"~/.vimrc

execute pathogen#infect()
filetype plugin indent on

set encoding=utf-8
set number
syntax on

colorscheme glacier

set guifont=Cousine:h12
set lines=50 columns=100

"set autoindent
set smartindent
set ts=2
set shiftwidth=2
set expandtab
set nocompatible


" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
 set ttymouse=xterm2
endif
