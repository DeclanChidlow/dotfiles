# Declan "Vale" Chidlow's personal configuration file for ZSH
# https://github.com/DeclanChidlow/dotfiles
# https://vale.rocks

ZSH=/usr/share/oh-my-zsh/

bindkey -v

setopt HIST_IGNORE_ALL_DUPS

macchina

# Alias
alias ls="exa --classify --icons -a"
alias tree="exa --tree --icons -a"
alias vdir="exa --long --icons -a"
alias grep="grep --color=auto"
alias ping="ping -c 5"
alias cat="bat"
alias :q="exit"
alias .zshrc="nvim ~/.zshrc"
alias matrix="neo-matrix -D"
alias pipes="pipes.sh -p 3 -r 4500"

# Eval
eval "$(thefuck --alias)"

ZSH_THEME="bira"
plugins=(aliases colored-man-pages cp git systemd)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
