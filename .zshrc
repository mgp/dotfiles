export ZSH="/Users/mgp/.oh-my-zsh"
export LANG=en_US.UTF-8
export TERM="xterm-256color"
export KEYTIMEOUT=1

ZSH_THEME="bullet-train"
COMPLETION_WAITING_DOTS="true"
# Avoid slow creation of Git prompt in large repositories
BULLETTRAIN_GIT_EXTENDED="false"
BULLETTRAIN_GIT_CLEAN=""

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
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
