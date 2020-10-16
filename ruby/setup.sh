#!/bin/bash

cd $(dirname $0)

set -e

echo "*** RUBY SETUP: START ***"

cp gemrc ~/.gemrc

echo "*** RUBY SETUP: DONE ***"