# Declan "Vale" Chidlow's personal configuration file for ZSH
# https://github.com/DeclanChidlow/dotfiles
# https://vale.rocks

bindkey -v

setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt share_history

echo ""
fastfetch -c ~/.config/fastfetch/info.jsonc
echo ""

# Alias
alias ls="eza --group-directories-first --icons -a"
alias tree="eza --tree --level=2 --icons -a"
alias vdir="eza --long --icons -a"
alias grep="ugrep"
alias ping="ping -c 5"
alias cat="bat"
alias :q="exit"
alias .zshrc="nvim ~/.zshrc"
alias matrix="neo-matrix -D"
alias pipes="pipes-rs -p 3 -r 0.5"
alias fetch="fastfetch"
alias kssh="kitty +kitten ssh"
alias nixconf="nvim /etc/nixos/configuration.nix"

# Oh My ZSH is configured in the Nix config
