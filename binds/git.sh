# Git

# Check the status of the repository.
alias gs="git status"

# Adds the given files into the git repository.
alias ga="git add "

# Pulls the latest changes from the origin master branch.
alias gpl="git pull origin master"

# Commits the changes made in a git repository.
alias gc="git commit -m "

# Pushes the commits to the origin master branch.
alias gps="git push origin master"

# Ammends a commit.
alias gam="git commit --ammend"

# Revert everything.
alias nah="git reset --hard;git clean -df;"

# Stages all files, commits them and finally pushes them to master.
function gacp() {
    ( git add --all :/ && git commit -m "$1" && git push origin master )
}

# Clones a git repository.
# Example: clone -service user/repository
# clone g oxyzero/shell
# By default, it points to GitHub.
function clone() {
    if [ "$#" -lt 2 ]; then
        echo -e " Illegal number of arguments.\n"
    fi

    provider=$1
    shift

    if [ "$provider" == "g" ] || [ "$provider" == "github" ]; then
        repository=$1
        shift
        (git clone http://github.com/$repository.git $*)
        return
    fi

    if [ "$provider" == "b" ] || [ "$provider" == "bitbucket" ]; then
        repository=$1
        shift
        (git clone http://bitbucket.com/$repository.git $*)
        return
    fi

    # The provider wasn't defined, therefore a repository was passed as the
    # first argument. So we'll just point it to GitHub.
    (git clone http://github.com/$provider.git $*)
}

# Shows the total number of commits of the repository including
# the total number of commits of each contributor.
function commits() {
    # Shows the total number of commits of each contributor.
    echo -e " Number of commits of each contributor: \n"
    (git shortlog -s -n --all)

    # Shows the total number of commits pushed into the repository.
    echo -e "\n Number of commits in the repository: $( git log --oneline --all | wc -l | xargs)"
}


