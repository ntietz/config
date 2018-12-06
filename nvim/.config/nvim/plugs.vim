call plug#begin('~/local/.shared/nvim/plugged')

" File navigation
Plug 'scrooloose/nerdtree'

" git utlities
Plug 'tpope/vim-fugitive' " Git integration
Plug 'airblade/vim-gitgutter' " Shows a diff in the gutter

" TODO: what is this section called?
" TODO: consider switching to powerline
Plug 'vim-airline/vim-airline' " Display more contextual information

" syntax highlighting
Plug 'sheerun/vim-polyglot' " Automatic syntax highlighting

" vimwiki
Plug 'vimwiki/vimwiki'

" TODO: pull out just the colorscheme I want to remove a dependency
" add a ton of colorschemes to pick from
Plug 'flazz/vim-colorschemes'

Plug 'tpope/vim-obsession'

" [submodule "vim/.vim/bundle/ctrlp"]
" 	path = vim/.vim/bundle/ctrlp
" 	url = https://github.com/ctrlpvim/ctrlp.vim
"


" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } " fzf binary
" Plug 'junegunn/fzf.vim' " fzf vim plugin
" Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins', 'commit': '865747efe41ea1d923758617d71e8e5b59da292e' } " Auto-completion
" Plug 'tpope/vim-obsession' " Save and restore sessions
call plug#end()

