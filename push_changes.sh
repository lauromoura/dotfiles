#!/bin/sh

# Git
cp       ./.gitconfig          ~/.gitconfig

# NVim
cp       init.vim             ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim/after
cp    -R ./nvim-after/*       ~/.config/nvim/after
mkdir -p ~/.config/nvim/syntax
cp    -R ./nvim-syntax/*      ~/.config/nvim/syntax
