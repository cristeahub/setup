set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'nvie/vim-flake8'
Plug 'nanotech/jellybeans.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'hashivim/vim-terraform'
Plug 'leafgarland/typescript-vim'
Plug 'beyondmarc/glsl.vim'

Plug 'reasonml-editor/vim-reason-plus'

" Jedi
Plug 'davidhalter/jedi-vim'

" Haskell stuff
Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'
Plug 'Shougo/neocomplete.vim'

call plug#end()
filetype plugin indent on

"Turn on line numbers:
set number

"Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"Set lead button
let mapleader = ","

autocmd FileType python set complete+=k~/.vim/syntax/python.vim
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
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
filetype plugin indent on

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

set tabpagemax=999999999

"Jellybeans color
color jellybeans

"vim airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

"syntax checkers
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

"typescript
let g:typescript_indent_disable = 1

let g:ale_python_flake8_executable = '/Users/cristea/.local/share/virtualenvs/app-7sxOjptf/bin/flake8'

"jedi
let g:jedi#use_tabs_not_buffers = 1

"reasonml
let g:LanguageClient_serverCommands = {
    \ 'reason': ['/absolute/path/to/reason-language-server.exe']
    \ }
