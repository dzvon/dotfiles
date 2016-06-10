#!/usr/bin/env bash

echo "Installing dotfiles"

echo "Updating repository"
git pull origin master;
echo "Initializing submodule(s)"
git submodule update --init --recursive;

function doIt() {
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
        --exclude "README.md" --exclude "LICENSE" -avhb --no-perms ./.* ~

    source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi
fi
unset doIt;

if [ "$(uname)" == "Darwin" ]; then
    echo -e "\n\nRunning on OSX"

    source install/brew.sh

    source install/osx.sh
fi

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Done."
