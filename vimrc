execute pathogen#infect()

syntax on
filetype plugin indent on

" Window settings
set winminwidth=20
set winwidth=100
set winheight=20

" Wrapping
set nowrap
set linebreak " wrap nicer

" Keeps lines below the cursor
set scrolloff=2

" Tabbing
" I added this monster because Python doesn't play nice with my usual
" settings, or some such nonsense. Anyway, it appears to work.
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

" makes LaTeX use spell checking, word wrapping
autocmd FileType tex set wrap spell
autocmd FileType make set noexpandtab
autocmd FileType python SetupTabbing

let java_allow_cpp_keywords=1

set ruler
set number
set backspace=indent,eol,start
set hlsearch

set splitright
set splitbelow

map <C-n> :NERDTreeToggle<CR>


" Enable airline by default
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Ignore *.pyc files.
let NERDTreeIgnore = ['\.pyc$']

"
"" I think this is some command for OS X compatibility? I don't know. Leaving
"" it here so that I can find it later if I need it.
"set term=xterm-color
set t_Co=256

colorscheme 256-grayvim
"colorscheme gentooish
