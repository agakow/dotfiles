#!/bin/sh
#
# Usage: atom-package-backup
#
# Saves a list of your currently installed atom packages to
# ~$DOTFILES/atom.symlink/packages.txt suitable for install
# via atom-package-install

set -e

apm list --installed --bare > $DOTFILES/atom.symlink/packages.list
