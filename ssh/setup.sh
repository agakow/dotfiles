#!/usr/bin/env bash

cd $(dirname $0)
set -e

echo SSH setup

cat config >> ~/.ssh/config

echo "Email:"
read email

ssh-keygen -t rsa -b 4096 -C $email

eval "$(ssh-agent -s)"

ssh-add -K ~/.ssh/id_rsa

pbcopy < ~/.ssh/id_rsa.pub
echo "Copied public key to clipboard"
