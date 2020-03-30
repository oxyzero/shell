#!/bin/bash

#
# The path that leads to your shell.
#
AIR_PATH=$HOME/.air

#
# Load the local configuration.
#
source $AIR_PATH/config.sh

#
# Apply all of profile bindings.
#
for file in $AIR_PATH/profiles/$AIR_PROFILE/bindings/*.sh; do
    source $file
done
