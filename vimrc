"~/.vimrc

execute pathogen#infect()
filetype plugin indent on

set encoding=utf-8
set number
syntax on
set ttyfast

" Colors
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-default

"set guifont=Cousine:h12
set lines=100 columns=100
" set window resize
set sessionoptions+=resize,winpos

"set autoindent
set smartindent
set copyindent
set ts=2
set shiftwidth=2
set expandtab
set nocompatible

" MAP NERDTree
map <C-n> :NERDTreeToggle<cr>
" NERDTree Sidebar Size
let g:NERDTreeWinSize = 40

" Reload ~/.vimrc when anything changes
"augroup reload_vimrc " {
 " autocmd!
  "  autocmd BufWritePost $MYVIMRC source $MYVIMRC
"augroup END " }

" Autoload NERDTree
"autocmd vimenter * NERDTree

" airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_a = airline#section#create(['mode','','branch'])
"https://github.com/Yggdroot/indentLine
"let g:indentLine_char = '.'
"let g:indentLine_color_term = 239
"let g:indentLine_enabled = 1
"https://github.com/airblade/vim-gitgutter
" set updatetime=250
" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
 set ttymouse=xterm2
endif
