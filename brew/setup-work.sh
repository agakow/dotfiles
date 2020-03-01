#!/bin/bash

cd $(dirname $0)

set -e
echo 'Starting work brew bundle...'
brew tap Homebrew/bundle
brew bundle --file Brewfile.work
echo '*** DONE ***'