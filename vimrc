

filetype plugin indent on

" Tabbing
function! SetupTabbing()
  set tabstop=2
  set expandtab
  set shiftwidth=2
  set softtabstop=2
  set sw=2
  set autoindent
  set smartindent
  set smarttab
endfunction
command! -bar SetupTabbing call SetupTabbing()
SetupTabbing

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
autocmd FileType python SetupTabbing

" set term=xterm

let java_allow_cpp_keywords = 1

set ruler
set number
set backspace=indent,eol,start
set hlsearch

augroup HiglightTODO
  autocmd!
  autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', 'TODO', -1)
augroup END

