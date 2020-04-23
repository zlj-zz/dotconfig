
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

alias l="la"
alias c="clear"
alias h='htop'
alias s="neofetch --ascii_distro bilibili"
alias sudo="sudo -E"
#alias v="nvim"
alias t='tmux'

export TERMINFO=/usr/share/terminfo

thefuck --alias | source


export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

export RUBY=/home/zachary/.gem/ruby/2.7.0/bin
export TESSDATA_PREFIX=/usr/share/tessdata
set -x PATH $RUBY $PATH
