# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yash33/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Paths
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.fnm:$PATH"
PATH="$HOME/anaconda3/bin:$PATH"
PATH="$HOME/anaconda3/condabin:$PATH"

# Alias
alias vi="nvim"
alias ls="exa"

# ~/.zshrc
eval "$(fnm env --use-on-cd)"
ZSH_THEME="powerlevel10k/powerlevel10k"
# eval "$(starship init zsh)"

source ~/.p10k.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
