function zle_eval {
    echo -en "\e[2K\r"
    eval "$@"
    zle redisplay
}

function openlazygit {
    zle_eval lazygit
}

zle -N openlazygit; bindkey "^G" openlazygit

# git
function g {
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

        * )
            git $@
    esac
}
