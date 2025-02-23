# Personal configuration for ZSH
# https://github.com/DeclanChidlow/dotfiles
# https://vale.rocks

bindkey -v

## History
#

setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt share_history

## Functions
# 

# Create a new directory and navigate into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Touch a new file and edit it
toed() {
    touch "$1" && $EDITOR "$1"
}

## Define a function to retrieve the current Git branch
git_branch() {
  local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  [[ -n $branch ]] && echo "‹$branch›"
}

## Prompt
#

setopt PROMPT_SUBST
PROMPT='%B%F{light_white}╭──╴%F{green}%n@%m%f %F{blue}%~%f %F{yellow}$(git_branch)%f
╰─%#%b '

## Alias
#

alias ls="eza --group-directories-first --icons -a"
alias tree="eza --tree --level=2 --icons -a"
alias vdir="eza --long --icons -a"
alias grep="ugrep"
alias ping="ping -c 5"
alias cat="bat"
alias :q="exit"
alias .zshrc="$EDITOR ~/.zshrc"
alias matrix="neo-matrix -D"
alias pipes="pipes-rs -p 3 -r 0.5"
alias kssh="kitty +kitten ssh"

## Secrets
#

if [ -f ~/.secrets ]; then
    source ~/.secrets
else
	echo "404: ~/.secrets not found."
fi
