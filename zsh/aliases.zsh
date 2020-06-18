# aliases
alias c=clear -x
alias cs=cowsay
alias sudo='sudo -E'
#alias s="neofetch --cpu_temp C --memory_display barinfo --shell_path on "
#alias s="neofetch --ascii_distro bilibili "
alias s='neofetch --cpu_temp C --memory_display barinfo --shell_path on --ascii "$(fortune | cowsay -W 35 | lolcat)"'
alias v="nvim"
alias h='htop'
alias ra='ranger'
alias sra='sudo -E ranger'
alias t='tmux'
# the same as `ranger` and `neovim`
alias gl='lazygit'
# git
alias gc1='git clone --depth=1'

eval $(thefuck --alias)
