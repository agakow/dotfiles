#!/bin/bash

cd $(dirname $0)

set -e
echo 'Starting java brew bundle...'
brew tap Homebrew/bundle
brew bundle --file Brewfile.java
echo '*** DONE ***'