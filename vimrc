"~/.vimrc

execute pathogen#infect()
filetype plugin indent on
" -------------------------------------------------------------------
" basic options
" -------------------------------------------------------------------
set nocompatible
set encoding=utf-8
set number
set wrap
set showmatch
"set autoindent
"set copyindent
set noerrorbells
set ttyfast
set ruler
set autoread
set laststatus=2
" -------------------------------------------------------------------
" appearances
" -------------------------------------------------------------------
syntax on
if has('gui_running')
	set background=light
else
	set background=dark
endif
" -------------------------------------------------------------------
"  seoul256 vim theme 
" -------------------------------------------------------------------
" colorscheme seoul256
" -------------------------------------------------------------------
" -------------------------------------------------------------------
" vimbrant vim theme
" -------------------------------------------------------------------
colorscheme vimbrant
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=#DDDDDD
" -------------------------------------------------------------------
"  railscast vim theme
"  ------------------------------------------------------------------
"colorscheme base16-railscasts
"highlight clear SignColumn
"highlight VertSplit    ctermbg=236
"highlight ColorColumn  ctermbg=237
"highlight LineNr       ctermbg=236 ctermfg=240
"highlight CursorLineNr ctermbg=236 ctermfg=240
"highlight CursorLine   ctermbg=236
"highlight StatusLineNC ctermbg=238 ctermfg=0
"highlight StatusLine   ctermbg=240 ctermfg=12
"highlight IncSearch    ctermbg=3   ctermfg=1
"highlight Search       ctermbg=1   ctermfg=3
"highlight Visual       ctermbg=3   ctermfg=0
"highlight Pmenu        ctermbg=240 ctermfg=12
"highlight PmenuSel     ctermbg=3   ctermfg=1
"highlight SpellBad     ctermbg=0   ctermfg=1
"  ------------------------------------------------------------------
" character limits
"set lines=100 columns=100
"set tw=100
"set colorcolumn=100
" --------------------------------------------------------------------
" Backups
set nobackup
set noswapfile
" --------------------------------------------------------------------
" set window resize
set sessionoptions+=resize,winpos
" --------------------------------------------------------------------
" tab options
set shiftwidth=2
set softtabstop=2
set ts=2
set expandtab
" --------------------------------------------------------------------
"  highlight search terms
set hlsearch
set incsearch
" --------------------------------------------------------------------
" bells I dislike so much, I do ...
set noerrorbells
set visualbell
" --------------------------------------------------------------------
" Remove trailing whitespace in Ruby/JS/HTML
autocmd BufWritePre *.rb,*.coffee,*.js.eco,*.erb :%s/\s\+$//e
" --------------------------------------------------------------------
" map leader
let mapleader = ","
let g:mapleader = ","
" MAP NERDTree
map <C-n> :NERDTreeToggle<cr>
" NERDTree Sidebar Size
let g:NERDTreeWinSize = 40
" Clipboard usage
set clipboard=unnamed
" Reload ~/.vimrc when anything changes
augroup AutoReloadVimRC
  au!
  au BufWritePost .vimrc so ~/.vimrc
augroup END
" -------------------------------------------------------------------
" lets remape ; : ok!
" this will allow you to use ;w and strip a few steps ok!
" -------------------------------------------------------------------
nnoremap ; :
" vimrc edit/source
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" CtrlP mapping
let g:ctrlp_cmd = 'CtrlP'
noremap <leader>q :CtrlP<CR>
let g:ctrlp_max_files=0
" airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_a = airline#section#create(['mode','','branch'])
" Add dots per spacing ...
set list listchars=tab:»-,trail:·,extends:»,precedes:«
" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
 set ttymouse=xterm2
endif
