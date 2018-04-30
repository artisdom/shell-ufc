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
        git commit -m $2
    elif [ "$1" = "caa" ]
    then
        git add .
        git commit --amend -C HEAD
    elif [ "$1" = "ls" ]
    then
        git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate
    else
        command git $@
    fi
}
