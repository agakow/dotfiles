#!/bin/bash

cd $(dirname $0)

set -e

if [ "$(which atom)" ]
  echo "Setting up atom packages & preferences..."
  apm install --packages-file packages.list
  cp config.cson ~/.atom/config.cson
  echo "*** DONE ***"
fi