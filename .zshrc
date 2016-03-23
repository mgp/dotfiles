export ZSH=/Users/mgp/.oh-my-zsh
export KEYTIMEOUT=1
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export LANG=en_US.UTF-8

ZSH_THEME="bullet-train"
COMPLETION_WAITING_DOTS="true"

plugins=(vi-mode osx brew git python pip vagrant colorize colored-man-pages history zsh-syntax-highlighting history-substring-search)
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
