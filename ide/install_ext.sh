#!/bin/bash
# code --list-extensions > vscode-extensions.txt
# install to antigravity
cat vscode-extensions.txt | xargs -L 1 agy --install-extension
