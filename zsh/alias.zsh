# reload zsh config
alias reload!="source ~/.zshrc"

if hash nvim 2>/dev/null; then
    alias vi="nvim"
    alias vim="nvim"
fi

if hash lsd 2>/dev/null; then
    alias ls='lsd'
fi

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'

alias ll="ls -alFh ${colorflag}"
alias rmf="rm -rf"

# Helpers
alias grep="grep --color=auto --ignore-case"
alias df="df -h"

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias doc="cd ~/Documents"

# Alias Virtual Box
alias v2ray="~/Share/FGFW/v2ray/v2ray-linux-64/v2ray -config ~/Share/FGFW/v2ray/config.json"
