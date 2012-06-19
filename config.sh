#!/bin/bash

cd ~

rm -f .profile
rm -f .bashrc
ln -s ~/Repositories/config/profile .profile
ln -s ~/Repositories/config/bashrc .bashrc

rm -f .screenrc
ln -s ~/Repositories/config/screenrc .screenrc

rm -f .vimrc
ln -s ~/Repositories/config/vimrc .vimrc

# set up the default branch for git
git config --global branch.master.remote origin
git config --global branch.master.merge refs/heads/master

rm -rf .vim
ln -s ~/Repositories/config/vim .vim

