
#
# This file handles the boot of the initial screen of the shell.
#

clear

export PS1='\n \[\e[0;37m\]\u\[\e[1;37m\] at \[\e[1;31m\]$(hostname)\[\e[1;37m\] in \[\e[1;32m\]\w\[\e[m\]\[\e[1;36m\]$(__git_ps1)\[\e[m\]\n \033[1;37m\$ \[\e[m\]'

# Introducing your shell.
echo -e $shellName

# Have a nice quote!
echo -e "\n    " $(head -$((${RANDOM} % `wc -l < $shellPath/.quotes` + 1)) $shellPath/.quotes | tail -1)
