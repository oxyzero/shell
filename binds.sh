#!/bin/bash

#
# This file invokes all of the bindings such as aliases and functions,
# and allows to define settings for each of them.
#

for file in $SHELL_PATH/binds/*.sh; do
    source $file
done
