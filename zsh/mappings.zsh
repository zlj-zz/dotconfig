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
        "p" )git pull;;
        "P" )git push;;
        'f' )git fetch;;
        's' )git status;;
        'S' )git stash ${@:2:$((${#@}))};;
        "a" )
            if [[ $2 ]]; then
                git add ${@:2:$((${#@}))}
            else
                git add .
            fi
            ;;
        "A" )git commit --amend;;
        'c' )git commit ${@:2:$((${#@}))};;
        'C' )git checkout ${@:2:$((${#@}))};;
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
        * )
            git $@
    esac
}
