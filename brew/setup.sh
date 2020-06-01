#!/bin/bash

cd $(dirname $0)

set -e

echo Homebrew setup

# Only install Homebrew if not already installed
if test ! $(which brew)
then
  echo 'Installing Homebrew...'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  echo '*** DONE ***'
fi

echo 'Starting brew bundle...'
brew tap Homebrew/bundle
brew bundle
echo '*** DONE ***'
