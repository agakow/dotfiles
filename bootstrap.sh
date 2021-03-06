#!/usr/bin/env bash
set -e

rm -rf .dotfiles
rm -rf dotfiles-master

curl -L https://github.com/agakow/dotfiles/archive/master.zip -o master.zip
unzip master.zip
rm -rf master.zip
./dotfiles-master/brew/setup.sh
rm -rf dotfiles-master

git clone https://github.com/agakow/dotfiles.git .dotfiles
pushd .dotfiles
git remote rm origin
git remote add origin git@github.com:agakow/dotfiles.git
popd

.dotfiles/zsh/setup.sh
.dotfiles/macos/setup.sh
.dotfiles/vim/setup.sh
.dotfiles/sublime/setup.sh
.dotfiles/git/setup.sh

# .dotfiles/ruby/setup.sh

# mkdir -p ~/Projects/go/src/
# mkdir -p ~/Projects/go/bin/

echo ''
echo '*** SETUP COMPLETE ***'
