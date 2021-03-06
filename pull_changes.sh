#!/bin/sh

# Git
cp       ~/.gitconfig            .

# NVim
cp       ~/.config/nvim/init.vim .
mkdir -p ./nvim-after
cp    -R ~/.config/nvim/after/*  ./nvim-after
mkdir -p ./nvim-syntax
cp    -R ~/.config/nvim/syntax/* ./nvim-syntax

# Fish functions
cp    -R ~/.config/fish/functions .

cp -R ~/.config/fish/config.fish .

# Emmett snippets
cp    -R ~/.snippets_custom.json .
