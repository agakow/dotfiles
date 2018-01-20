#!/bin/sh
#
# Homebrew
#
# Only install Homebrew if not already installed
if test ! $(which brew)
then
  source $DOTFILES/helpers
  info "Installing Homebrew"

  # Install the correct homebrew
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi
  success "Homebrew Installed"
fi

exit 0
