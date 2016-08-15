set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'nvie/vim-flake8'
Plugin 'nanotech/jellybeans.vim'
Plugin 'kballard/vim-swift'
Plugin 'groenewege/vim-less'
Plugin 'derekwyatt/vim-scala'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on

"Turn on line numbers:
set number

"Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

autocmd FileType python set complete+=k~/.vim/syntax/python.vim
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType vhdl setlocal shiftwidth=2 tabstop=2
autocmd FileType less setlocal shiftwidth=2 tabstop=2
autocmd FileType swift setlocal shiftwidth=2 tabstop=2
autocmd FileType haskell setlocal shiftwidth=2 tabstop=2

"Set 256 colors
let &t_Co=256

"Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
syntax on

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set ignorecase
set smartcase

cmap w!! %!sudo tee > /dev/null %

set list
set listchars=nbsp:…,tab:▸\ ,trail:·,eol:$

"Jellybeans color
color jellybeans
