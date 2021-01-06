g() {

    case $1 in
        's' )git status ${@:2:$((${#@}))};;

        "p" )git pull ${@:2:$((${#@}))};;

        "P" )git push ${@:2:$((${#@}))};;

        "PP" )git push --force;;

        'f' )
            if [[ $2  && ! \($3\) ]]; then
                git fetch origin $2:$2
            else
                git fetch ${@:2:$((${#@}))}
            fi
            ;;

        'h' )
            if [[ $2 == 'p' ]]; then
                git stash pop
            else
                git stash ${@:2:$((${#@}))}
            fi
            ;;

        "a" )
            if [[ $2 ]]; then
                git add ${@:2:$((${#@}))}
            else
                git add .
            fi
            ;;

        "A" )git commit --amend;;

        'c' )git commit ${@:2:$((${#@}))};;

        'b' )git checkout ${@:2:$((${#@}))};;

        "m" )
            if [[ $2 ]]; then
                git merge ${@:2:$((${#@}))}
            else
                git merge origin/master
            fi
            ;;

        'd' )git diff ${@:2:$((${#@}))};;

        'l' )
            if [[ $2 == '1' ]]; then
                git log --graph --all --decorate --oneline ${@:3:$((${#@}))}
            else
                git log --graph --all --decorate ${@:2:$((${#@}))}
            fi
            ;;

        'r' )git reset ${@:2:$((${#@}))};;

        'savepd')git config credential.helper store;;

        '-h')
            echo -e 'usage:\n'\
            's       --: git status\n'\
            'p       --: git push\n'\
            'P       --: git push\n'\
            'PP      --: git push --force\n'\
            'a       --: git add .\n'\
            '          g a [file] ... \n'\
            'c       --: git commit\n'\
            'A       --: git commit --amend \n'\
            'f       --: git fetch \n'\
            '          g f [branch-name] \n'\
            'b       --: git checkout \n'\
            'd       --: git diff \n'\
            'm       --: git merge origin/master \n'\
            '          g m [branch-name] \n'\
            'l       --: git log --graph --all --decorate \n'\
            '          g l 1    --: git log --graph --all --decorate --oneline \n'\
            'h       --: git stash \n'\
            '          g h p     --: git stash pop'\
            'r       --: git reset \n'\
            'savepd  -- Remember your account number and password \n'\
            ;;

        * )
            git $@
    esac
}

