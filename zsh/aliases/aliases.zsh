
alias cs='cowsay'
alias h='htop'
alias t='tmux -2'

# ranger
alias ra='ranger'
alias sra='sudo -E ranger'

alias y='yazi'

alias s="neofetch --cpu_temp C --memory_display barinfo --shell_path on "
#alias s="neofetch --ascii_distro bilibili "
#alias s='neofetch --cpu_temp C --memory_display barinfo --shell_path on --ascii "$(fortune | cowsay -W 35 | lolcat)"'

alias all_proxy='export https_proxy=http://127.0.0.1:7897 http_proxy=http://127.0.0.1:7897 all_proxy=socks5://127.0.0.1:7897'
alias echo_proxy='echo $https_proxy && echo $http_proxy && echo $all_proxy'

# If thefuck installed.
if type thefuck >/dev/null 2>&1; then
  eval $(thefuck --alias)
fi

if type pigit >/dev/null 2>&1; then
    eval "$(pigit --complete zsh)"

    alias pg="pigit"
    alias g="pigit cmd"
    alias r="pigit repo"

fi

alias cc='claude'
alias cc-resume='claude --resume'
