#!/bin/bash
cat vscode-extensions.txt | xargs -L 1 agy --install-extension
