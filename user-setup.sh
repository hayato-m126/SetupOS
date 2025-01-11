#!/bin/bash

mkdir -p $HOME/.ansible
PLAYBOOK="ansible/user.yml"

if ! (command -v uv >/dev/null 2>&1); then
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH="$HOME/.local/bin"
fi
if ! (command -v ansible-playbook >/dev/null 2>&1); then
    uv tool install ansible-core
    ansible-galaxy collection install community.general
fi

ansible-playbook $PLAYBOOK --ask-become-pass
