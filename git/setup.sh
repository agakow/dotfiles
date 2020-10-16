#!/bin/bash

cd $(dirname $0)

set -e

echo "*** GIT SETUP: START ***"

cp config ~/.gitconfig
cp ignore ~/.gitignore

echo "Name:"
read name

echo "Email:"
read email

git config --global user.email "$email"
git config --global user.name "$name"

echo "***"
git config --get user.email
git config --get user.name
echo "***"

echo "*** GIT SETUP: DONE ***"