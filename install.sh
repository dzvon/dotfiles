#!/usr/bin/env bash

set -x

function doIt() {
    ln -sb ~/.dotfiles/.config/nvim ~/.config/nvim
    ln -sb ~/.dotfiles/.tmux.conf ~/.tmux.conf
    ln -sb ~/.dotfiles/.zshrc ~/.zshrc
    ln -sb ~/.dotfiles/.config/alacritty ~/.config/alacritty
}

doIt
