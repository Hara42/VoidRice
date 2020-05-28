set nocompatible

" Syntax highlighting for many programming languages.
filetype plugin on
filetype indent on
syntax on

:set mouse=a

"call plug#begin('~/.vim/plugged')
"Plug 'itchyny/lightline.vim'
"Plug 'scrooloose/nerdtree'
"Plug 'junegunn/goyo.vim'
"call plug#end()

map <leader>n :NERDTreeToggle<CR>
map <leader>g :Goyo<CR>

" Colorscheme
"colorscheme gruvbox
set background=dark

" Make vim transparent
hi Normal guibg=NONE ctermbg=NONE

" Add a line below the current line
set cursorline

" No Beeping
set visualbell

" Statusbar
set laststatus=2

let mapleader=" "
" Reload this file
nnoremap <leader>, :source ~/.vimrc<CR>

"Spellcheck English and Spanish
set spelllang=en_us

" *****INDENTION*****
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Remove trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Split vertically
nnoremap <leader>v <C-w>v<C-w>l

" Navigating between screens nonretardlly
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Show hybrid of absolute and relative line numbers
set number relativenumber

" Display Options
set showmode
set showcmd

" ******LINE WRAPPING *****
" Wrap text that is longer than the window
set wrap
" Wrap at the end of a string
set linebreak
" Respect indention (e.g. Python)
set breakindent

" Highlight matching pairs of brackets. Use '%' to jump between the characters
set matchpairs+=<:>

" Speed up scrolling in Vim
set ttyfast

" Fixes common backspace problems
set backspace=indent,eol,start

" ***** SEARCH *****
" Hight-light search matches and enable incremental search
set hlsearch
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
"Include only uppercase words with uppercase search term
set smartcase
" Cancel the search by using 'Esc' key
nnoremap <silent> <leader>/ :nohlsearch<CR>
autocmd FileType * inoremap `a á
autocmd FileType * inoremap `e é
autocmd FileType * inoremap `i í
autocmd FileType * inoremap `o ó
autocmd FileType * inoremap `u ú
autocmd FileType * inoremap `u ü
autocmd FileType * inoremap `n ñ
