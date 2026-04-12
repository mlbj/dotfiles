#!/bin/bash

DOTFILES="$HOME/dotfiles"

# Create destination directories
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/kitty

# Link files 
ln -sf "$DOTFILES/alacritty.toml" ~/.config/alacritty/alacritty.toml
ln -sf "$DOTFILES/.vimrc" ~/.vimrc
ln -sf "$DOTFILES/kitty/kitty.conf" ~/.config/kitty/kitty.conf

echo "Symbolic links created successfully."

# Git related config
git config --global core.editor "vim"
