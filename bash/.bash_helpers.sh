
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

configure_ls() {
  PLATFORM=$(uname)
  # makes ls print pretty
  case $PLATFORM in
    Linux)
      alias ls="ls --color=auto"
      ;;
    *)
      alias ls="ls -G"
      ;;
  esac
}

configure_completions() {
  # If the gcloud sdk is installed, set up completion for it
  if [[ -e "$HOME/.install/google-cloud-sdk" ]]; then
    source $HOME/.install/google-cloud-sdk/completion.bash.inc
    source $HOME/.install/google-cloud-sdk/path.bash.inc
  fi

  # If asdf is installed, set up completion for it
  if [[ -e "$HOME/.asdf" ]]; then
    source $HOME/.asdf/asdf.sh
    source $HOME/.asdf/completions/asdf.bash
  fi
}

vimwiki() {
    cd ~/Code/ntietz/vimwiki
    git pull
    vim -c "VimwikiIndex"
    git add -A
    git commit -am "Auto-commit ($(date))"
    git push
    cd -
}


