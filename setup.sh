#!/bin/bash

# Path to your dotfiles repo
DOTFILES="$HOME/.dotfiles"

# Map of source -> target
declare -A FILES=(
    ["$DOTFILES/bash/.bashrc"]="$HOME/.bashrc"
    ["$DOTFILES/bash/.profile"]="$HOME/.profile"
    ["$DOTFILES/tmux/.tmux.conf"]="$HOME/.tmux.conf"
    ["$DOTFILES/vim/.vimrc"]="$HOME/.vimrc"
    ["$DOTFILES/zsh/.zshrc"]="$HOME/.zshrc"
)

echo "🔗 Setting up dotfile symlinks..."

for src in "${!FILES[@]}"; do
    dest="${FILES[$src]}"

    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
        echo "📦 Backing up existing $dest to $dest.bak"
        mv "$dest" "$dest.bak"
    fi

    echo "🔗 Linking $src → $dest"
    ln -sf "$src" "$dest"
done

echo "✅ All dotfiles linked!"
