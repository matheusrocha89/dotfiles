#!/usr/bin/env bash

# Install git and xcode command line tools
xcode-select --install

# Install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm -rf ~/.zshrc

# Clone dotfiles
git clone git@github.com:matheusrocha89/dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig


# Install Homebrew and brew packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(cd ~/.dotfiles && brew bundle)

