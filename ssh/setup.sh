#!/usr/bin/env bash

cd $(dirname $0)
set -e

echo "*** SSH SETUP: START ***"

mkdir -p ~/.ssh
cat config >> ~/.ssh/config

echo "Email:"
read email

ssh-keygen -t rsa -b 4096 -C $email

eval "$(ssh-agent -s)"

ssh-add -K ~/.ssh/id_rsa

pbcopy < ~/.ssh/id_rsa.pub

echo "*** SSH SETUP: DONE ***"
echo "Copied public key to clipboard"
