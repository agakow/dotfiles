#!/bin/bash

cd $(dirname $0)
set -e

# Install oh my ZSH
install-oh-my-zsh.sh

echo "Copying zsh config..."
cp .zshrc ~/.zshrc
echo "*** DONE ***"