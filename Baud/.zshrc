# Declan "Vale" Chidlow's personal configuration file for ZSH
# https://github.com/DeclanChidlow/dotfiles
# https://vale.rocks

bindkey -v

setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt share_history

# Welcome
echo ""
fastfetch -c ~/.config/fastfetch/info.jsonc
echo ""

# Functions

## Define a function to retrieve the current Git branch
git_branch() {
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  if [[ -n $branch ]]; then
    echo "‹$branch›"
  fi
}

# Prompt
setopt PROMPT_SUBST
PROMPT='%B%F{light_white}╭──╴%F{green}%n@%m%f %F{blue}%~%f %F{yellow}$(git_branch)%f
╰─%#%b '

# Alias
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
alias fetch="fastfetch"
alias kssh="kitty +kitten ssh"

# Secrets
if [ -f ~/.secrets ]; then
    source ~/.secrets
else
    print "404: ~/.secrets not found."
fi
