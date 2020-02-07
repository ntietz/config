source $HOME/.config/nvim/plug/plug.vim
source $HOME/.config/nvim/plugs.vim

syntax on
filetype plugin indent on

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
au BufRead,BufNewFile *.wiki set wrap

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

set termguicolors
set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox

hi! link haskellType GruvboxBlue
hi! link haskellIdentifier GruvboxAqua
hi! link haskellSeparator GruvboxFg4
hi! link haskellDelimiter GruvboxOrange
hi! link haskellOperators GruvboxPurple

hi! link haskellBacktick GruvboxOrange
hi! link haskellStatement GruvboxPurple
hi! link haskellConditional GruvboxPurple

hi! link haskellLet GruvboxRed
hi! link haskellDefault GruvboxRed
hi! link haskellWhere GruvboxRed
hi! link haskellBottom GruvboxRedBold
hi! link haskellImportKeywords GruvboxPurpleBold
hi! link haskellDeclKeyword GruvboxOrange
hi! link haskellDecl GruvboxOrange
hi! link haskellDeriving GruvboxPurple
hi! link haskellAssocType GruvboxAqua

hi! link haskellNumber GruvboxAqua
hi! link haskellPragma GruvboxRedBold

hi! link haskellTH GruvboxAquaBold
hi! link haskellForeignKeywords GruvboxGreen
hi! link haskellKeyword GruvboxRed
hi! link haskellFloat GruvboxAqua
hi! link haskellInfix GruvboxPurple
hi! link haskellQuote GruvboxGreenBold
hi! link haskellShebang GruvboxYellowBold
hi! link haskellLiquid GruvboxPurpleBold
hi! link haskellQuasiQuoted GruvboxBlueBold
hi! link haskellRecursiveDo GruvboxPurlpe
hi! link haskellQuotedType GruvboxRed
hi! link haskellPreProc GruvboxFg4
hi! link haskellTypeRoles GruvboxRedBold
hi! link haskellTypeForall GruvboxRed
hi! link haskellPatternKeyword GruvboxBlue

set autoread
set updatetime=100
au FileChangedShell * checktime
au CursorHold * checktime
au CursorHoldI * checktime

set wildignore +=*/tmp/*,*.pyc,*/__pycache__/*

nmap <leader>b :Buffers<CR>
nmap <leader>f :Files<CR>

nmap <F8> :TagbarToggle<CR>

" let g:deoplete#enable_at_startup = 1
" let g:deoplete#disable_auto_complete = 1
" let g:deoplete#sources#jedi#show_docstring = 1
" inoremap <expr><C-n> deoplete#mappings#manual_complete()
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Turn off polyglot for go so they play nice
if exists('g:loaded_polyglot')
    let g:polyglot_disabled = ['go']
    let g:polyglot_disabled = ['rst']
endif

