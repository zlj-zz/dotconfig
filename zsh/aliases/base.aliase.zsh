# aliases
alias sudo='sudo -E'
alias c=clear -x
alias ls='ls -G'
alias l='ls -alG'
if ! type nvim >/dev/null 2>&1; then
    alias v='vim'
else
    alias v='nvim'
fi

alias sf='grep -rEI ' # sf(search file)
