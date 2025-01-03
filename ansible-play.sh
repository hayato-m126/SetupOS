#!/bin/bash

export PATH="$HOME/.local/bin"

# export .env
set -o allexport
# shellcheck disable=SC1091
source "$(dirname "$0")/.env"
set +o allexport

ansible-playbook ansible/ubuntu.yml --ask-become-pass
