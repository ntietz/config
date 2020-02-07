
export SHELL=/bin/bash

source ~/.bash_helpers.sh

set_prompt
configure_ls
configure_completions

alias vim="nvim"
alias notes="vim ~/notes.md"

alias vw="vimwiki"
alias update_configs="cd ~/Code/ntietz/config; git pull; cd -; source ~/.profile"

# default editor
export EDITOR=vim

# set history
export HISTSIZE=1000000 # very large history
export HISTFILESIZE=10000000 # very large history
export HISTCONTROL=ignoreboth:erasedups # ignore duplicate history entries
shopt -s histappend # append to the history when the shell exits (instead of overwriting)

# disable messaging
if `tty -s`; then
    mesg n
fi

export PATH="$HOME/.local/bin:$HOME/.bin:$PATH"
export TERM=xterm-256color

if [ -d "$HOME/.pyenv" ]
then
  export PATH="$HOME/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
  export PYENV_ROOT="$HOME/.pyenv"
fi

if [ -x "$(command -v gcloud)" ] && [ -f "$HOME/.install/google-cloud-sdk" ]
then
  source $HOME/.install/google-cloud-sdk/completion.bash.inc
  source $HOME/.install/google-cloud-sdk/path.bash.inc
fi

if [ -x "$(command -v yarn)" ] && [ -d "$HOME/.yarn/bin" ]
then
  export PATH="/home/nicholas/.yarn/bin:$PATH"
fi

if [ -d "$HOME/.asdf" ]
then
  . $HOME/.asdf/asdf.sh
fi

alias iex="iex --erl \"-kernel shell_history enabled\""

if [ -f /usr/local/etc/bash_completion ]
then
    . /usr/local/etc/bash_completion
fi

#
#export PATH="$HOME/.poetry/bin:$PATH"
