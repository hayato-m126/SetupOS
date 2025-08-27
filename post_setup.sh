#!/bin/bash

if [ -f "$HOME/.ssh/github_ed25519" ]; then
    bash "$HOME/.dotfiles/install.sh"
    mise install -y
else
    echo "$HOME/.ssh/github_ed25519 not found"
fi

echo "Do you want install python cli tools using uv? (y/n)"
read -r answer

if [ "$answer" == "y" ]; then
    uv tool install pre-commit
    uv tool install argcomplete
    uv tool install vcstool
    uv tool install nvitop
else
    echo "cancel"
fi
