#!/bin/bash

export XDG_CONFIG_HOME="$HOME"/.config

ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim

packages=(
    fd
    ripgrep
    npm
    lazygit
)

for package in "${packages[@]}"; do
    echo "Installing $package ..."
done

echo "All packages are installed"

