git() {
    if [ "$1" = "gca" ]
    then
        git gc --aggressive
    elif [ "$1" = "sync" ]
    then
        git pull
        git push
    elif [ "$1" = "ac" ]
    then
        git add .
        git commit $2
    elif [ "$1" = "caa" ]
    then
        git add .
        git commit --amend -C HEAD
    else
        command git $@
    fi
}
