# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yash33/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Paths
PATH="/home/yash33/.cargo/bin:$PATH"
PATH="/home/yash33/.local/bin:$PATH"
PATH="/home/yash33/.fnm:$PATH"
PATH="/home/yash33/anaconda3/bin:$PATH"
PATH="/home/yash33/anaconda3/condabin:$PATH"

# Alias
alias vi="nvim"
alias ls="exa"

# ~/.zshrc
eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
