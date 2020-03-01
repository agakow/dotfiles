#!/bin/sh

# Backup install packages to file

set -e

apm list --installed --bare > $DOTFILES/atom/packages.list
