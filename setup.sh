#!/bin/bash

DOTFILES="$HOME/dotfiles"

# Create destination directories
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/kitty

# Link files 
ln -sf "$DOTFILES/alacritty/alacritty.toml" ~/.config/alacritty/alacritty.toml
ln -sf "$DOTFILES/vim/.vimrc" ~/.vimrc
ln -sf "$DOTFILES/kitty/kitty.conf" ~/.config/kitty/kitty.conf

echo "Symbolic links created successfully."

# Source the versioned bashrc appends from ~/.bashrc, once
if ! grep -qF '# >>> dotfiles bashrc.append >>>' ~/.bashrc 2>/dev/null; then
    cat >> ~/.bashrc <<'EOF'

# >>> dotfiles bashrc.append >>>
[ -r "$HOME/dotfiles/bash/bashrc.append" ] && . "$HOME/dotfiles/bash/bashrc.append"
# <<< dotfiles bashrc.append <<<
EOF
    echo "Hooked bash/bashrc.append into ~/.bashrc."
fi

# Git related config
git config --global core.editor "vim"
