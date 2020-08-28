#!/bin/bash

cd $(dirname $0)

set -e

echo "Zsh setup"

# Install oh my ZSH
./install-oh-my-zsh.sh

cp .zshrc ~/.zshrc
echo "*** DONE ***"
