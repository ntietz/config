
export SHELL=/bin/bash

source ~/.bash_helpers.sh

set_prompt
configure_ls
configure_completions

alias notes="vim ~/notes.md"

# default editor
export EDITOR=vim

# set history
export HISTSIZE=1000 # very large history
export HISTFILESIZE=10000 # very large history
export HISTCONTROL=ignoreboth:erasedups # ignore duplicate history entries
shopt -s histappend # append to the history when the shell exits (instead of overwriting)

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

if [ -x "$(command -v gcloud)" ]
then
  source $HOME/.install/google-cloud-sdk/completion.bash.inc
  source $HOME/.install/google-cloud-sdk/path.bash.inc
fi

alias iex="iex --erl \"-kernel shell_history enabled\""

if [ -f /usr/local/etc/bash_completion ]
then
    . /usr/local/etc/bash_completion
fi

