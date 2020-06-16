let mapleader=" "

" Use the system clipboard
set clipboard+=unnamedplus

" Vertically center document when entering insert mode
autocmd InsertEnter * norm zz

" Remove trailing whitesplce and newlines on save
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

" Enable spell checking
map <leader>s :setlocal spell! spelllang=en_us<CR>

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Shortcut split opening
nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>

" Alias replace all to S
nnoremap S :s%s//gI<left><Left><Left>

" Basic settings
set mouse=a
set go=a
filetype plugin on
syntax on
set encoding=utf-8
set ignorecase
set smartcase
set number relativenumber

" Tab settings
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set cursorline
set cursorcolumn

" Autocompletion
set wildmode=longest,list,full

set splitbelow splitright

" Beaner glyphs
autocmd FileType * inoremap `a á
autocmd FileType * inoremap `e é
autocmd FileType * inoremap `i í
autocmd FileType * inoremap `o ó
autocmd FileType * inoremap `u ú
autocmd FileType * inoremap ``u ü
autocmd FileType * inoremap `n ñ
