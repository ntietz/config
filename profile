
# PS1="\[\e]0;\@ [\u@\h] [\w]\007\]\[\e[1;33m\]\@ \[\e[1;37m\][\[\e[1;35m\]\u\[\e[1;37m\]@\[\e[1;32m\]\h\[\e[1;37m\]] \[\e[1;37m\][\[\e[1;31m\]\w\[\e[1;37m\]] [\[\e[1;36m\]$(ls -l | grep "^-" | wc -l | tr -d " ") \[\e[1;34m\]files\[\e[1;37m\]] \n\[\e[1;33m\]\@ \[\e[1;37m\]$ \[\e[0m\]"

export SHELL=/bin/bash

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

# sets the PS1 prompt
set_prompt

# makes ls print pretty
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    alias ls="ls --color=auto"
elif [[ "$unamestr" == 'Darwin' ]]; then
    alias ls="ls -G"
fi

# default editor
export EDITOR=vim

# set history
export HISTSIZE=1000
export HISTFILESIZE=1000
export HISTCONTROL=ignoredups

# disable messaging
if `tty -s`; then
    mesg n
fi

# set the path for Hadoop
# export HADOOP_VERSION=hadoop-1.0.1
# export HADOOP=~/hadoop/$HADOOP_VERSION
# export PATH=$PATH:$HADOOP/bin
export JAVA_HOME=/usr

# add the rubygem location
#export PATH=$PATH:/var/lib/gems/1.8/bin/ 
#export PATH=~/.rbenv/bin:~/.rbenv/shims:$PATH
##
# Your previous /Users/nicholas/.profile file was backed up as /Users/nicholas/.profile.macports-saved_2012-06-19_at_15:40:04
##

# MacPorts Installer addition on 2012-06-19_at_15:40:04: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/
#export JAVA_HOME="$(/usr/libexec/java_home)"
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")

#### ALIAS SECTION

# servers
alias sshneptune="ssh ntietz@neptune.cs.kent.edu"
alias sshposeidon="ssh ntietz@poseidon.cs.kent.edu"
alias sshntietz="ssh nicholas@ntietz.com"
alias sshacm="ssh ntietz@acm.cs.kent.edu"

# commands
alias cls='clear && ls'
alias doit='sudo $(history -p !-1)'
alias f="pushd"
alias b="popd"
alias screen_pwd='screen -X eval "chdir $PWD"'
#alias psql="'/Applications/Postgres.app/Contents/Versions/9.3/bin'/psql -p5432"

macos_magic_fix() {
    killall Dock
}

export PATH=$PATH:~/.bin

export HISTCONTROL=ignorespace

