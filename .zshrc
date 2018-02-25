export ZSH=/home/zaab/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, pip, zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export BROWSER='firefox'
export MANPAGER="/bin/sh -c \"col -bx | vim -c 'set ft=man' -\""
export TERMINAL='urxvt'

alias cd..="cd .."
alias la="ls -a"
alias bpy="bpython3"


function codecat() {
    cat $* | pygmentize;
}


function termbin() {
    cat $* | nc termbin.com 9999;
}
