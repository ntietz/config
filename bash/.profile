
export SHELL=/bin/bash

source ~/.bash_helpers.sh

set_prompt
configure_ls
configure_completions

# default editor
export EDITOR=vim

# set history
export HISTSIZE=1000 # very large history
export HISTFILESIZE=10000 # very large history
export HISTCONTROL=ignoreboth:erasedups # ignore duplicate history entries
shopt -s histappend # append to the history when the shell exits (instead of overwriting)
# save and reload history each time a command is run, to share history between shells

alias ssh-proxy="ssh -D 8080 galaxy"

# disable messaging
if `tty -s`; then
    mesg n
fi

export PATH=$PATH:~/.bin
export TERM=xterm-256color

# Installed with https://github.com/pyenv/pyenv-installer
if [ -x "$(command -v pyenv)" ]
then
  export PATH="/home/nicholas/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

if [ -f /usr/local/etc/bash_completion ]
then
    . /usr/local/etc/bash_completion
fi

