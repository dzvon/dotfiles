#!/usr/bin/env bash

if test ! $(which brew); then
    echo "Installing homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

brew install ctags
brew install the_silver_searcher
brew install cmake

brew install tmux
brew install zsh
brew install neovim/neovim/neovim

brew install git

exit 0
