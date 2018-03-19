
# PS1="\[\e]0;\@ [\u@\h] [\w]\007\]\[\e[1;33m\]\@ \[\e[1;37m\][\[\e[1;35m\]\u\[\e[1;37m\]@\[\e[1;32m\]\h\[\e[1;37m\]] \[\e[1;37m\][\[\e[1;31m\]\w\[\e[1;37m\]] [\[\e[1;36m\]$(ls -l | grep "^-" | wc -l | tr -d " ") \[\e[1;34m\]files\[\e[1;37m\]] \n\[\e[1;33m\]\@ \[\e[1;37m\]$ \[\e[0m\]"

export SHELL=/bin/bash

update_terminal_cwd() {
    true;
}

set_prompt() {
    local BLUE="\[\e[0;34m\]"
    local DARK_BLUE="\[\e[1;34m\]"
    local RED="\[\e[0;31m\]"
    local DARK_RED="\[\e[1;31m\]"
    local GREEN="\[\e[0;32m\]"
    local NO_COLOR="\[\e[0m\]"

    case $TERM in
        xterm*|screen)
            TITLEBAR='\[\e]0;\u@\h \w\007\]';
            ;;
        *)
            TITLEBAR="";
            ;;
    esac

    FAILURE_COLOR="if [[ \$? = '0' ]]; then echo \"$GREEN\"; else echo \"$RED\"; fi"

    PS1="${TITLEBAR}$BLUE[\t]\`$FAILURE_COLOR\` \u@\h> $NO_COLOR"
}

restart_network_manager() {
  sudo service network-manager restart
}

# sets the PS1 prompt
set_prompt

# makes ls print pretty
#alias ls="ls --color=auto"
# TODO: make this work on both platforms
alias ls="ls -G"

# default editor
export EDITOR=vim

# set history
export HISTSIZE=1000
export HISTFILESIZE=1000
export HISTCONTROL=ignoredups,erasedups
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
shopt -s histappend

# disable messaging
if `tty -s`; then
    mesg n
fi

alias href="history -a; history -c; history -r"

export PATH=$PATH:~/.bin
export HISTCONTROL=ignorespace
export TERM=xterm-256color

export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

source $HOME/.install/google-cloud-sdk/completion.bash.inc
source $HOME/.install/google-cloud-sdk/path.bash.inc

alias iex="iex --erl \"-kernel shell_history enabled\""

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

