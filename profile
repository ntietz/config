
# PS1="\[\033]0;\@ [\u@\h] [\w]\007\]\[\033[1;33m\]\@ \[\033[1;37m\][\[\033[1;35m\]\u\[\033[1;37m\]@\[\033[1;32m\]\h\[\033[1;37m\]] \[\033[1;37m\][\[\033[1;31m\]\w\[\033[1;37m\]] [\[\033[1;36m\]$(ls -l | grep "^-" | wc -l | tr -d " ") \[\033[1;34m\]files\[\033[1;37m\]] \n\[\033[1;33m\]\@ \[\033[1;37m\]$ \[\033[0m\]"

function prompt {
    local BLUE="\[\033[0;34m\]"
    local DARK_BLUE="\[\033[1;34m\]"
    local RED="\[\033[0;31m\]"
    local DARK_RED="\[\033[1;31m\]"
    local GREEN="\[\033[0;32m\]"
    local NO_COLOR="\[\033[0m\]"

    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    FAILURE_COLOR="if [[ \$? = '0' ]]; then echo \"$GREEN\"; else echo \"$RED\"; fi"

    PS1="$BLUE[\t] \`$FAILURE_COLOR\` \u@\h> $NO_COLOR"
}

prompt

