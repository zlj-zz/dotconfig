
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

alias sudo="sudo -E"
alias l="la"
alias c="clear"
alias s="neofetch --ascii_distro bilibili"
#alias v="nvim"
alias h='htop'
alias r='ranger'
alias t='tmux'
alias lg='lazygit'

export TERMINFO=/usr/share/terminfo

thefuck --alias | source


export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

export RUBY=/home/zachary/.gem/ruby/2.7.0/bin
export TESSDATA_PREFIX=/usr/share/tessdata
set -x PATH $RUBY $PATH
