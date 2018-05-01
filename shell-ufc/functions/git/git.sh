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
        git commit -m $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "caa" ]
    then
        git add .
        git commit --amend -C HEAD $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "ls" ]
    then
        git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate

    elif [ "$1" = "acn" ]
    then
        git commit --amend $2 $3 $4 $5 $6 $7 $8 $9

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
        git ls-files | grep -i $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "sa" ]
    then
        grep -r $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "assume" ]
    then
        git update-index --assume-unchanged $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "unassume" ]
    then
        git update-index --no-assume-unchanged $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "assumed" ]
    then
        git ls-files -v | grep ^h | cut -c 3-

    elif [ "$1" = "logtree" ]
    then
        git log --graph --oneline --decorate --all $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "s" ]
    then
        git status $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "st" ]
    then
        git status -sb $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "cl" ]
    then
        git clone $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "ci" ]
    then
        git commit $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "co" ]
    then
        git checkout $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "br" ]
    then
        git branch $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "di" ]
    then
        git diff --word-diff $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "cob" ]
    then
        git checkout -b $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "a" ]
    then
        git add $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "aa" ]
    then
        git add .

    elif [ "$1" = "ap" ]
    then
        git add -p $2 $3 $4 $5 $6 $7 $8 $9

    elif [ "$1" = "aap" ]
    then
        git add -p .

    elif [ "$1" = "acp" ]
    then
        git add -p .
        git commit -m $2 $3 $4 $5 $6 $7 $8 $9

    else
        command git $@
    fi
}
