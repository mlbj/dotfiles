#!/bin/bash

DOTFILES="$HOME/dotfiles"

# Create destination directories
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/kitty
mkdir -p ~/.config/nvim

# Link files 
ln -sf "$DOTFILES/alacritty/alacritty.toml" ~/.config/alacritty/alacritty.toml
ln -sf "$DOTFILES/vim/.vimrc" ~/.vimrc
ln -sf "$DOTFILES/kitty/kitty.conf" ~/.config/kitty/kitty.conf
ln -sf "$DOTFILES/nvim/init.vim" ~/.config/nvim/init.vim

echo "Symbolic links created successfully."

# Git related config
git config --global core.editor "vim"
