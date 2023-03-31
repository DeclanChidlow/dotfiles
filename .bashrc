#
# ~/.bashrc
#

# Referenced Applications:
# Exa
# NeoVim
# Neo-Matrix
# Pipes.Sh
# TheFuck
# Beets

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Show user, hostname, and working dir
PS1='\e[0;35m┌\e[m\e[0;36m[\u@\h]\e[m\e[0;35m─\e[m\e[0;36m[\w]\e[m\e[m\e[0;35m$\n└─>\e[m '

# VIM everywhere
set -o vi

# Auto Complete
complete -cf doas

# Don't save duplicate lines in history
export HISTCONTROL=ignoredups

# Alias
alias ls='exa --classify'
alias tree='exa --tree'
alias dir='dir --color=auto'
alias vdir='exa --long'
alias grep='grep --color=auto'
alias ping='ping -c 5'
alias vim='nvim'
alias :q='exit'
alias .bashrc="nvim ~/.bashrc"
alias matrix="neo-matrix -D"
alias pipes="pipes.sh -p 3 -r 4500"

# Eval
eval $(thefuck --alias)
eval "$(beet completion)"

# Colour man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
