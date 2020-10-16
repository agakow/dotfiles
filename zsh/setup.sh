#!/bin/bash

cd $(dirname $0)

set -e

echo "*** ZSH SETUP: START ***"

# Install oh my ZSH
./install-oh-my-zsh.sh

cp .zshrc ~/.zshrc
echo "*** ZSH SETUP: DONE ***"
