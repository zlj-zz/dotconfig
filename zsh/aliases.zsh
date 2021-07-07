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

alias cs='cowsay'
alias h='htop'
alias t='tmux -2'
# ranger
alias ra='ranger'
alias sra='sudo -E ranger'

alias sf='grep -rEI ' # sf(search file)

alias s="neofetch --cpu_temp C --memory_display barinfo --shell_path on "
#alias s="neofetch --ascii_distro bilibili "
#alias s='neofetch --cpu_temp C --memory_display barinfo --shell_path on --ascii "$(fortune | cowsay -W 35 | lolcat)"'

eval $(thefuck --alias)

# npm
alias ni='npm install'
alias nis='npm install --save'
alias nid='npm install --save-dev'
alias nit='npm install-test'
alias nits='npm install-test --save'
alias nitd='npm install-test --save-dev'
alias nu='npm uninstall'
alias nus='npm uninstall --save'
alias nusd='npm uninstall --save-dev'
alias np='npm publish'
alias nup='npm unpublish'
alias nlk='npm link'
alias nod='npm outdated'
alias nrb='npm rebuild'
alias nud='npm update'
alias nr='npm run'
alias nls='npm list --depth=0 2>/dev/null'
alias nlsg='npm list -g --depth=0 2>/dev/null'
alias nt='npm test'
