#!/bin/sh

# Change default shell to zsh, can be checked using:
# dscl . read "$HOME" UserShell
echo "Checking if zsh shell set up..."
local current_shell="$(dscl . read "$HOME" UserShell 2>/dev/null | cut -d" " -f2)"
local desired_zsh="/usr/local/bin/zsh"
local shell_path="$(which zsh)"

if [ "$shell_path" == "$desired_zsh" ] && [ "$current_shell" != "$desired_zsh" ]
then
  echo "Changing your shell to zsh..."
  if ! grep "$shell_path" /etc/shells > /dev/null 2>&1 ; then
    echo "Adding '$shell_path' to /etc/shells"
    sudo sh -c "echo $shell_path >> /etc/shells"
  fi
  chsh -s "$shell_path"
  echo '*** DONE ***'
else
  echo 'zsh shell already setup'
fi