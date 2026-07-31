
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

proxyctl() {
    local choice
    echo "Proxy options:"
    echo "  1) Show current proxy values"
    echo "  2) Set proxy"
    echo "  3) Unset proxy"
    echo "  q) Quit"
    read "choice?Choose: "
    case $choice in
        1|"")
            echo "https_proxy=$https_proxy"
            echo "http_proxy=$http_proxy"
            echo "all_proxy=$all_proxy"
            ;;
        2)
            export https_proxy=http://127.0.0.1:7897
            export http_proxy=http://127.0.0.1:7897
            export all_proxy=socks5://127.0.0.1:7897
            echo "Proxy set."
            ;;
        3)
            unset https_proxy http_proxy all_proxy
            echo "Proxy unset."
            ;;
        q)
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac
}

# If thefuck installed.
if type thefuck >/dev/null 2>&1; then
  eval $(thefuck --alias)
fi

if type pigit >/dev/null 2>&1; then
    eval "$(pigit --init)"

    alias pg="pigit"
    alias g="pigit cmd"
    alias r="pigit repo"

fi

alias cc='claude'
alias cc-resume='claude --resume'
