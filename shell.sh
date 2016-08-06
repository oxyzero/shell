#
# This file is the core of the shell. Here you can set up your shell
# settings and dispatch any service you may wish to use.
#

SHELL_PATH=~/Code/shell # Your shell path.
SHELL_NAME="R5" # Your shell name.
SHELL_OS="windows" # windows, mac, linux
SHELL_THEME="default" # Theme selection is dependant on OS (themes/SHELL_OS/)
SHELL_EDITOR="vim" # Your default editor.

SHELL_ASSETS=$SHELL_PATH/themes/$SHELL_OS/assets

source $SHELL_PATH/binds.sh
source $SHELL_PATH/boot.sh
