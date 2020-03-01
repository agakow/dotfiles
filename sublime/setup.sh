#!/bin/bash

cd $(dirname $0)

set -e

if [ "$(which subl)" ]
    local sublime_dir="~/Library/Application Support/Sublime Text 3"
    local user_dir="$sublime_dir/Packages/User"
    local package_control="$sublime_dir/Installed Packages/Package Control.sublime-package"
then
  if [ ! -f "$package_control" ]
  then
    echo "Downloading sublime package control..."
    wget "https://sublime.wbond.net/Package Control.sublime-package" -o $package_control
    echo "*** DONE ***"
  fi

  echo 'Setting up sublime packages & preferences...'
  cp packages.json $user_dir/Package Control.sublime-settings
  cp preferences.json $user_dir/Preferences.sublime-settings

  echo "*** DONE ***"
fi