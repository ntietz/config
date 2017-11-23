
export SHELL=/bin/bash

source ~/.bash_helpers.sh

set_prompt
configure_ls
configure_completions

# default editor
export EDITOR=vim

# set history
export HISTSIZE=10000 # very large history
export HISTFILESIZE=10000 # very large history
export HISTCONTROL=ignoreboth:erasedups # ignore duplicate history entries
shopt -s histappend # append to the history when the shell exits (instead of overwriting)
# save and reload history each time a command is run, to share history between shells
export PROMPT_COMMAND="history -a; history -c; history -r"

# disable messaging
if `tty -s`; then
    mesg n
fi

export PATH=$PATH:~/.bin
export TERM=xterm-256color

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

