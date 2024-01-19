#!/usr/bin/env sh

set -x

doIt() {
    ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
    ln -s ~/.dotfiles/.config/alacritty ~/.config/alacritty
    ln -s ~/.dotfiles/.config/sway ~/.config/sway
    ln -s ~/.dotfiles/.config/waybar ~/.config/waybar

    ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
    ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
}

doIt
