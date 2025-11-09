#!/bin/bash

export XDG_CONFIG_HOME="$HOME"/.config

ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim

go install github.com/jesseduffield/lazygit@latest
npm install -g treesitter-cli

echo "All packages are installed"

