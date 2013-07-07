#!/bin/bash

cd ~

rm -f .profile
rm -f .bashrc
ln -s ~/Code/config/profile .profile
ln -s ~/Code/config/bashrc .bashrc

rm -f .screenrc
ln -s ~/Code/config/screenrc .screenrc

rm -f .vimrc
ln -s ~/Code/config/vimrc .vimrc

# set up the default branch for git
git config --global branch.master.remote origin
git config --global branch.master.merge refs/heads/master

rm -rf .vim
ln -s ~/Code/config/vim .vim

