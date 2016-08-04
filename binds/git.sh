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

# Shows the total number of commits of the repository including
# the total number of commits of each contributor.
function commits() {
    # Shows the total number of commits of each contributor.
    echo -e " Number of commits of each contributor: \n"
    (git shortlog -s -n --all)

    # Shows the total number of commits pushed into the repository.
    echo -e "\n Number of commits in the repository: $( git log --oneline --all | wc -l | xargs)"
}


