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

    elif [ "$1" = "acn" ]
    then
        git commit --amend

    elif [ "$1" = "lf" ]
    then
        git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat

    elif [ "$1" = "lds" ]
    then
        git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short

    elif [ "$1" = "ld" ]
    then
        git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=relative

    elif [ "$1" = "ff" ]
    then
        git ls-files | grep -i $2

    elif [ "$1" = "sa" ]
    then
        grep -r $2

    elif [ "$1" = "assume" ]
    then
        git update-index --assume-unchanged $2

    elif [ "$1" = "unassume" ]
    then
        git update-index --no-assume-unchanged $2

    elif [ "$1" = "assumed" ]
    then
        git ls-files -v | grep ^h | cut -c 3-

    elif [ "$1" = "logtree" ]
    then
        git log --graph --oneline --decorate --all

    else
        command git $@
    fi
}
