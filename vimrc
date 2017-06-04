"~/.vimrc
execute pathogen#infect()
filetype plugin indent on
" -------------------------------------------------------------------
" basic options
" -------------------------------------------------------------------
set nocompatible
set encoding=utf-8
set wrap
set showmatch
set noerrorbells
set visualbell
set ttyfast
set ruler
set autoread
set laststatus=2
set hlsearch
set incsearch
" -------------------------------------------------------------------
" appearances
" -------------------------------------------------------------------
syntax on
colorscheme dracula
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
" code folding
" --------------------------------------------------------------------
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
" --------------------------------------------------------------------
" Remove trailing whitespace in Ruby/JS/HTML
" --------------------------------------------------------------------
autocmd BufWritePre *.rb,*.coffee,*.js.eco,*.erb :%s/\s\+$//e
" --------------------------------------------------------------------
" map leader
let mapleader = ","
let g:mapleader = ","
" --------------------------------------------------------------------
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
" lets remap ; : ok!
" this will allow you to use ;w and strip a few steps ok!
" -------------------------------------------------------------------
nnoremap ; :
" -------------------------------------------------------------------
" vimrc edit/source
" -------------------------------------------------------------------
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" -------------------------------------------------------------------
" zshrc edit/source
" -------------------------------------------------------------------
nnoremap <leader>ez :vsp ~/dotfiles/zshrc<cr>
" -------------------------------------------------------------------
" remap buffer listing
" -------------------------------------------------------------------
nnoremap <leader>z :bn<cr>
" -------------------------------------------------------------------
" fzf customizations
" -------------------------------------------------------------------
"set rtp+=~/.fzf
set rtp+=/usr/local/opt/fzf
nnoremap <leader>o :FZF<cr>
" -------------------------------------------------------------------
" fzf > :BLines search lines in current buffer
" -------------------------------------------------------------------
nnoremap <leader>f :BLines<cr>
" -------------------------------------------------------------------
" write/quit/select all in current buffer
" -------------------------------------------------------------------
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>a :%y+<cr>
nnoremap <leader>g :Ag<cr>
" -------------------------------------------------------------------
" airline configuration
" -------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'
" -------------------------------------------------------------------
" Add indent guides based on tabs
set list
set listchars=tab:\ \ 
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"
let g:gitgutter_highlight_lines = 0
" -------------------------------------------------------------------
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
" backspace in insert mode will delete
set backspace=indent,eol,start
" ------------------------------------------------------------------
" Enable basic mouse behavior such as resizing buffers.
" ------------------------------------------------------------------
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
 set ttymouse=xterm2
endif
