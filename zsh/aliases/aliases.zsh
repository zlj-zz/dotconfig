
alias cs='cowsay'
alias h='htop'
alias t='tmux -2'

# ranger
alias ra='ranger'
alias sra='sudo -E ranger'


alias s="neofetch --cpu_temp C --memory_display barinfo --shell_path on "
#alias s="neofetch --ascii_distro bilibili "
#alias s='neofetch --cpu_temp C --memory_display barinfo --shell_path on --ascii "$(fortune | cowsay -W 35 | lolcat)"'

# If thefuck installed.
if type thefuck >/dev/null 2>&1; then
  eval $(thefuck --alias)
fi

if type pigit >/dev/null 2>&1; then
    eval "$(pigit --complete zsh)"

    alias pg="pigit"
    alias g="pigit cmd"
    alias gr="pigit repo"

    function openpigit {
    #    echo -en "\e[2K\r"
        pigit ''
        #zle redisplay
    }
    zle -N openpigit; bindkey "^G" openpigit

fi


