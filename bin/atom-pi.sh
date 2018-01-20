#!/bin/sh
#
# Usage: atom-package-install
#
# Installs the atom packages listed in your packages.txt file
# located at $DOTFILES/atom.symlink/packages.txt
#
# You can generate a new list based on currently installed
# packages via atom-package-backup

set -e

apm install --packages-file $DOTFILES/atom.symlink/packages.list
