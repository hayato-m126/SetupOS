#!/bin/bash

bash "$HOME/.dotfiles/install.sh"
mise install -y

echo "Do you want install python cli tools using uv? (y/n)"
read -r answer

if [ "$answer" == "y" ]; then
    uv tool install pre-commit
    uv tool install argcomplete
    uv tool install vcstool
    uv tool install nvitop
    uv tool install specify-cli --from git+https://github.com/github/spec-kit.git@v1.0.4
else
    echo "cancel"
fi
