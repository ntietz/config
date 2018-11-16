source $HOME/.config/nvim/plug/plug.vim
source $HOME/.config/nvim/plugs.vim

" Open NERDTree using a nice shortcut
map <C-n> :NERDTreeToggle<CR>

" Display buffers in the tab line
let g:airline#extensions#tabline#enabled = 1

set mouse=a

set nu
set nowrap

" TODO: do I want these all?
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set sw=2
set autoindent
set smartindent
set smarttab

"set splitright
"set splitbelow


