#!/bin/bash

cd $(dirname $0)

set -e

echo "*** GIT SETUP: START ***"

cp config ~/.gitconfig
cp ignore ~/.gitignore

echo -n "NAME: "
read name < /dev/tty

echo -n "EMAIL: "
read email < /dev/tty

git config --global user.email "$email"
git config --global user.name "$name"

echo "*** CHECK CONFIG ***"
echo -n "NAME: "
git config --get user.name
echo -n "EMAIL: "
git config --get user.email
echo "***"

echo "*** GIT SETUP: DONE ***"