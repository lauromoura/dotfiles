#!/bin/sh

echo "Updating dotfiles from repository"

# Git
cp       ./.gitconfig          ~/.gitconfig

# NVim
mkdir -p ~/.config/nvim
cp       init.vim             ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim/after
cp    -R ./nvim-after/*       ~/.config/nvim/after
mkdir -p ~/.config/nvim/syntax
cp    -R ./nvim-syntax/*      ~/.config/nvim/syntax

echo "dotfiles updated."
