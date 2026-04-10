# aliases
alias sudo='sudo -E'

alias c=clear -x

alias ls='ls -G'
alias ll='ls -lhG'
alias l='ls -alhG'

# support more pertty of `ls`
if type eza >/dev/null 2>&1; then
    alias ls='eza'
    alias ll='eza -alh'
    alias l='eza -lh'
    alias lt='eza --tree'
fi

if ! type nvim >/dev/null 2>&1; then
    alias v='vim'
else
    alias v='nvim'
    alias vim='nvim'
fi

alias sf='grep -rEI ' # sf(search file)
