#!/usr/bin/env bash

set -x

function doIt() {
    ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
    ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
    ln -s ~/.dotfiles/.zshrc ~/.zshrc
    ln -s ~/.dotfiles/.config/alacritty ~/.config/alacritty
    ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
}

doIt
