#!/bin/bash

cd $(dirname $0)

set -e

echo "*** HOMEBREW SETUP: START ***"

# Only install Homebrew if not already installed
if test ! $(which brew)
then
  echo "*** INSTALLING HOMEBREW: START ***"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  echo '*** INSTALLING HOMEBREW: DONE ***'
fi

echo "*** BREW BUNDLE ***"
brew tap Homebrew/bundle
brew bundle
echo '*** HOMEBREW SETUP: DONE ***'
