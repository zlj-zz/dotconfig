# close welcome
function fish_greeting
end

#   color
#set -U fish_color_normal normal
#set -U fish_color_command 00FF00
#set -U fish_color_quote 44FF44
#set -U fish_color_redirection 7BFF7B
#set -U fish_color_end FF7B7B
#set -U fish_color_error A40000
#set -U fish_color_param 30BE30
#set -U fish_color_comment 30BE30


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

alias sudo="sudo -E"
alias l="la"
alias c="clear"
alias s="neofetch --ascii_distro bilibili"
alias v="nvim"
alias h='htop'
alias r='ranger'
alias t='tmux'
alias lg='lazygit'
#alias wttr='wttr Huangshi'

export TERMINFO=/usr/share/terminfo

# the fuck
thefuck --alias | source

export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

export RUBY=/home/zachary/.gem/ruby/2.7.0/bin
export TESSDATA_PREFIX=/usr/share/tessdata
set -x PATH $RUBY $PATH
