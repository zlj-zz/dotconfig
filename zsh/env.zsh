export XDG_CONFIG_HOME=$HOME/.config
export LOCALBIN=$XDG_CONFIG_HOME/bin
export PATH=$PATH:$LOCALBIN
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/.local/bin
export PATH=$PATH:/home/zacharyzhang/.zacharyzhang/bin
export PATH=$PATH:/home/zacharyzhang/.zacharyzhang/sbin
export PATH=$PATH:$HOME/.zacharyzhang/bin
export PATH=$PATH:$HOME/.zacharyzhang/sbin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/snap/bin
export RANGER_LOAD_DEFAULT_RC="false"
export TERM_ITALICS=true
export TERM=xterm-256color
#export TERM=screen-256color
export TERMINFO=/usr/share/terminfo


# set default editor and visual
#export EDITOR=/usr/bin/vim
#export VISUAL=/usr/bin/vim
export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_MANUAL_REBIND=1


export LOCALPROG=$HOME/prog
export EDITOR=nvim
export VISUAL=nvim
# Flutter
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH=$PATH:${LOCALPROG}/flutter/bin
export PATH=$PATH:${LOCALPROG}/flutter/bin/cache/dart-sdk/bin
export PATH="$PATH":"$HOME/.pub-cache/bin"
# Android sdk
export ANDROID_HOME=${LOCALPROG}/Android/sdk
export PATH=$PATH:${ANDROID_HOME}/tools
export PATH=$PATH:${ANDROID_HOME}/platform-tools
# go
export PATH=$PATH:$HOME/go/bin
#export PATH=$PATH:$HOME/.gem/ruby/2.7.0
# pyenv
export PYENV_ROOT="$LOCALPROG/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
#HomeBrew
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
alias ibrew='arch -x86_64 /usr/local/bin/brew' # X86 Homebrew


#export PATH="${LOCALPROG}/nvim-osx64/bin:$PATH"

