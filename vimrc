set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin 'scala.vim'
" Plugin 'vim-scala'
Bundle 'derekwyatt/vim-scala'
" Plugin 'git@github.com:Valloric/YouCompleteMe.git'

call vundle#end()

filetype plugin indent on

" Tabbing
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" Window settings
set winminwidth=20
set winwidth=100
set winheight=20

" Syntax highlighting
syntax on

" Wrapping settings
set nowrap " nowrap makes the lines not wrap
" set wrap " wrap makes the lines wrap
set linebreak

" keeps lines below the cursor
set scrolloff=2

" makes LaTeX use spell checking, word wrapping
autocmd FileType tex set wrap spell
autocmd FileType make set noexpandtab
autocmd FileType *gitconfig set noexpandtab

" set term=xterm

let java_allow_cpp_keywords = 1

set ruler
set number
set backspace=indent,eol,start
set hlsearch

