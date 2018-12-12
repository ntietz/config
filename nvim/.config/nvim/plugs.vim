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

" Better session handling
Plug 'tpope/vim-obsession'

" Use common config to setup tab depth
Plug 'editorconfig/editorconfig-vim'

" Find files in a fuzzy way
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } " fzf binary
Plug 'junegunn/fzf.vim' " fzf vim plugin

" Auto-completion
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

call plug#end()

