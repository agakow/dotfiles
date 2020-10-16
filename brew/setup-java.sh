#!/bin/bash

cd $(dirname $0)

set -e

echo "*** JAVA SETUP: START ***"

brew tap Homebrew/bundle
brew bundle --file Brewfile.java

mkdir -p ~/.jenv/versions
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
jenv global 11.0

echo '*** JAVA SETUP: DONE ***'