#!/bin/bash

cd $(dirname $0)

set -e

echo Sublime setup

if [ "$(which subl)" ]
    SUBLIME_DIR="$HOME/Library/Application Support/Sublime Text 3"
    USER_DIR="$SUBLIME_DIR/Packages/User"
    PACKAGE_CONTROL="$SUBLIME_DIR/Installed Packages/Package Control.sublime-package"
then
  if [ ! -f "$PACKAGE_CONTROL" ]; then
    echo "Downloading sublime package control..."
    subl --command install_package_control
    echo "*** DONE ***"
  fi

  echo 'Setting up sublime packages & preferences...'
  cp packages.json "$USER_DIR/Package Control.sublime-settings"
  cp preferences.json "$USER_DIR/Preferences.sublime-settings"

  echo "*** DONE ***"
fi