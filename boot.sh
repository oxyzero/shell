
#
# This file handles the boot of the initial screen of the shell.
#

if [ "$SHELL_THEME" != "none" ]; then
    source $SHELL_PATH/themes/$SHELL_OS/$SHELL_THEME.sh
fi
