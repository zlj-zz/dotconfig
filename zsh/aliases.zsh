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
alias t='sudo tmux -2'
# ranger
alias ra='ranger'
alias sra='sudo -E ranger'
# the same as `ranger` and `neovim`

alias sf='grep -rEI ' # sf(search file)

alias s="neofetch --cpu_temp C --memory_display barinfo --shell_path on "
#alias s="neofetch --ascii_distro bilibili "
#alias s='neofetch --cpu_temp C --memory_display barinfo --shell_path on --ascii "$(fortune | cowsay -W 35 | lolcat)"'

eval $(thefuck --alias)
