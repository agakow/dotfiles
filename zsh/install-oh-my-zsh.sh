#!/bin/sh

# Oh my zsh
ZSH=~/.oh-my-zsh

if ! [ -d $ZSH ]
then
  echo 'Installing oh-my-zsh'
  env git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $ZSH || {
      echo "!! Error: cloning oh-my-zsh repo failed !!"
      exit 1
    }
  echo '*** DONE ***'
fi
