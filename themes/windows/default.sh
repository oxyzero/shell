clear

source $SHELL_ASSETS/colors.sh

export PS1='\n \[\e[0;37m\]\u\[\e[1;37m\] at \[\e[1;31m\]$(hostname)\[\e[1;37m\] in \[\e[1;32m\]\w\[\e[m\]\[\e[1;36m\]$(__git_ps1)\[\e[m\]\n \033[1;37m\$ \[\e[m\]'

# Introducing your shell.
echo -e "\n $BYellow $SHELL_NAME $BWhite \b\\ Shell$Color_Off"

# Have a nice quote!
echo -e "\n    " $(head -$((${RANDOM} % `wc -l < $SHELL_ASSETS/.quotes` + 1)) $SHELL_ASSETS/.quotes | tail -1)
