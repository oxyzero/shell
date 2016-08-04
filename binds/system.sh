# Windows
alias etc="cd /c/Windows/System32/drivers/etc/"
alias bin="cd /c/bin/"


alias cc="clear"
alias lsl="ls -l"
alias lsa="ls -a"
alias lsla="ls -la"
alias ll="ls -l"
alias la="ls -la"
alias l="ls"

# Creates a directory, and changes into it.
function cmkdir () {
    mkdir -p "$1" && cd "$1"
}

# Creates a directory, changes into that directory, and clears the screen.
function ccmkdir () {
    mkdir -p "$1" && cd "$1" && clear
}

# Change directory and clears the screen.
function ccd () {
    cd "$1" && clear
}

# Gets how many lines have been written in file groups in the current and sub-directories.
# Usage: wcg -l *.php
# Or: wcg *.php
function wcg() {
    if [ "$1" == "-l"  ]; then
        shift
        if [ "$1" != "" ]; then
            find -name "$1" -print0 | xargs -0 wc -l | tail -1
        else
            echo -e "Error: Second argument missing.\n"
        fi
    else
        if [ "$1" != "" ]; then
            find -name "$1" -print0 | xargs -0 wc -l
        else
            echo -e "Error: At least one argument is needed."
        fi
    fi
}

# Make a directory.
function md() {
    mkdir "$1" && clear
}
