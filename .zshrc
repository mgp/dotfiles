export ZSH="/Users/mgp/.oh-my-zsh"
export LANG="en_US.UTF-8"
export TERM="xterm-256color"
export KEYTIMEOUT=1

ZSH_THEME="bullet-train"
COMPLETION_WAITING_DOTS="true"
GIT_COMPLETION_CHECKOUT_NO_GUESS=1

plugins=(
  vi-mode
  osx
  brew
  git
  colorize
  colored-man-pages
  history
  history-substring-search
)

# Override defaults for bullet-train theme
BULLETTRAIN_GIT_EXTENDED="false"
BULLETTRAIN_GIT_CLEAN=""
BULLETTRAIN_PROMPT_ORDER=(
  time
  dir
  git
  cmd_exec_time
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
