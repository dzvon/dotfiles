# reload zsh config
alias reload!="source ~/.zshrc"

if hash nvim 2>/dev/null; then
    alias vi="nvim"
    alias vim="nvim"
fi

if hash lsd 2>/dev/null; then
    alias ls='lsd'
fi

if hash eza 2>/dev/null; then
    alias ls='eza'
fi

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'

alias rmf="rm -rf"

# Helpers
alias grep="grep --color=auto --ignore-case"
alias df="df -h"

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias doc="cd ~/Documents"
alias ssh="env TERM=xterm-256color ssh"
