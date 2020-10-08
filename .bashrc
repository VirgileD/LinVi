#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls --color=auto -lsh'
alias lll='ls --color=auto -alsh'

alias vi='vim'

export VISUAL="vim"
export GOPATH=/home/virgiled/go
export PATH=$PATH:$GOPATH/bin
export PATH="/home/virgiled/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#PS1='[\u@\h \W]\$ '
BG="\[\e[48;5;214m\]"
FG="\[\e[38;5;0m\]"
export BOLD="\[$(tput bold)\]"
export PS1="\[\e[4m\]${FG}${BG}${BOLD}\A \u@\h \[\e[3m\]\w >\[\e[m\] "
