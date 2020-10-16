#!/bin/bash

cd $(dirname $0)

set -e

if [ "$(which atom)" ]
  echo "*** ATOM SETUP: START ***"
  apm install --packages-file packages.list
  cp config.cson ~/.atom/config.cson
  echo "*** ATOM SETUP: DONE ***"
fi