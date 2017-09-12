#!/bin/bash

stow -t ~ bash
stow -t ~ screen
stow -t ~ vim

#rm -f .screenrc
#ln -s ~/Code/config/screenrc .screenrc

#rm -f .vimrc
#ln -s ~/Code/config/vimrc .vimrc

# set up the default branch for git
#git config --global branch.master.remote origin
#git config --global branch.master.merge refs/heads/master

#mkdir -f ~/.vim
#git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

