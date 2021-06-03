function zle_eval {
    echo -en "\e[2K\r"
    eval "$@"
    zle redisplay
}

function openlazygit {
    zle_eval lazygit
}
function openfungit {
    zle_eval fungit
}

#zle -N openlazygit; bindkey "^G" openlazygit
zle -N openfungit; bindkey "^G" openfungit

