source $HOME/.config/nvim/plug/plug.vim
source $HOME/.config/nvim/plugs.vim

" Open NERDTree using a nice shortcut
map <C-n> :NERDTreeToggle<CR>

" Display buffers in the tab line
let g:airline#extensions#tabline#enabled = 1

" Disable mouse input
set mouse=

" Keep context visible
set scrolloff=2
set sidescrolloff=0

" Display our current line number and the offset of other lines
set nu
set relativenumber

" Setup good wrapping so we don't wrap for most files and when we do, it's
" pretty.
set nowrap
set linebreak " wraps at word boundaries
autocmd FileType markdown set wrap
autocmd FileType tex set wrap

" Set tabbing to depth 2 and always use spaces.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent

let g:vimwiki_list = [ {'path': '~/Code/ntietz/vimwiki'} ]

set spell

colorscheme gruvbox
set background=dark

set autoread
set updatetime=100
au FileChangedShell * checktime
au CursorHold * checktime
au CursorHoldI * checktime

set wildignore +=*/tmp/*,*.pyc,*/__pycache__/*

nmap <leader>b :Buffers<CR>
nmap <leader>f :Files<CR>

let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1
let g:deoplete#sources#jedi#show_docstring = 1
inoremap <expr><C-n> deoplete#mappings#manual_complete()
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

