#!/bin/bash

cd ~

rm -f .profile
rm -f .bashrc
ln -s ~/Repositories/config/profile .profile
ln -s ~/Repositories/config/bashrc .bashrc

rm -f .screenrf
ln -s ~/Repositories/config/screenrc .screenrc

rm -f .vimrc
ln -s ~/Repositories/config/vimrc .vimrc

