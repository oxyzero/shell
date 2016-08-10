alias ..="cd .."

alias cc="clear"
alias ll="ls -l"
alias la="ls -la"
alias l="ls"

#
# Execute in "sudo" mode.
# Example: . apt-get install
#
function s() {
    (sudo $*)
}

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

#
# Create a directory.
#
function md() {
    mkdir "$1" && clear
}

#
# Easily edit your etc/hosts file.
#
function hosts() {
    if [ "$SHELL_OS" == "windows" ]; then
        ($SHELL_EDITOR "/c/Windows/System32/drivers/etc/hosts")
        return
    fi

    ($SHELL_EDITOR "/etc/hosts")
}
