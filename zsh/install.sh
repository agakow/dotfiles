#!/bin/sh
#
# Oh my zsh
ZSH=~/.oh-my-zsh
source $DOTFILES/helpers

if ! [ -d $ZSH ]
then
  info 'cloning oh-my-zsh'
  env git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $ZSH || {
      fail "Error: git clone of oh-my-zsh repo failed\n"
      exit 1
    }
fi
