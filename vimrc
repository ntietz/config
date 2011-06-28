" Tabbing
set tabstop=4
set shiftwidth=4
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

set term=xterm

