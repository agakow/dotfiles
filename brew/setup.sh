#!/bin/bash

cd $(dirname $0)

set -e

# Only install Homebrew if not already installed
if test ! $(which brew)
then
  echo 'Installing Homebrew...'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo '*** DONE ***'
fi

echo 'Starting brew bundle...'
brew tap Homebrew/bundle
brew bundle
echo '*** DONE ***'
