#!/bin/bash

if ! (command -v curl >/dev/null 2>&1); then
    sudo apt -y update
    sudo apt -y install curl
fi
if ! (command -v uv >/dev/null 2>&1); then
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH="$HOME/.local/bin"
fi
if ! (command -v ansible-playbook >/dev/null 2>&1); then
    uv tool install ansible-core
    ansible-galaxy collection install community.general
fi
