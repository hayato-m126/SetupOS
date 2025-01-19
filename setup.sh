#!/bin/bash

# export .env
set -o allexport
# shellcheck disable=SC1091
source "$(dirname "$0")/.env"
set +o allexport

PLAYBOOK="ansible/ubuntu.yml"

if [[ $OSTYPE == 'darwin'* ]]; then
    PLAYBOOK="ansible/mac.yml"
    if ! (command -v brew >/dev/null 2>&1); then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
elif [[ $OSTYPE == 'linux'* ]]; then
    if ! (command -v curl >/dev/null 2>&1); then
        sudo apt -y update
        sudo apt -y install curl
    fi
else
    echo "This OS is not supported"
    exit 1
fi

if ! (command -v uv >/dev/null 2>&1); then
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH="$HOME/.local/bin"
fi
if ! (command -v ansible-playbook >/dev/null 2>&1); then
    uv tool install ansible-core
    ansible-galaxy collection install community.general
fi

ansible-playbook $PLAYBOOK --ask-become-pass
