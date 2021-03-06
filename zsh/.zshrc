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
alias monitor2="xrandr --output HDMI-1 --mode 1920x1080 --right-of eDP-1 && feh --no-fehbg --bg-fill '/home/yash33/Pictures/homer-simpson-alone-life-4k-c0.jpg'"

# ~/.zshrc
eval "$(fnm env --use-on-cd)"

# Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# eval "$(starship init zsh)"

source /usr/share/fzf/shell/key-bindings.zsh
source ~/.p10k.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
