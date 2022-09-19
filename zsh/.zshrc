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
PATH="$HOME/.local/share/nvim/mason/bin:$PATH"
PATH="$HOME/doom-emacs/bin:$PATH"
PATH="$HOME/bin/:$PATH"
PATH="$HOME/anaconda3/bin:$PATH"
PATH="$HOME/anaconda3/condabin:$PATH"

# Alias
alias vi="nvim"
alias monitor2="xrandr --output HDMI-1 --mode 1920x1080 --right-of eDP-1 && feh --no-fehbg --bg-fill '/home/yash33/Pictures/homer-simpson-alone-life-4k-c0.jpg'"
alias rg="rg --hidden --glob '!.git'"
# alias emacs="emacsclient -c -a ' '"

# Defualt Editor
export EDITOR="$HOME/.local/bin/nvim"

# ~/.zshrc
eval "$(fnm env --use-on-cd)"

# Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# eval "$(starship init zsh)"

source /usr/share/fzf/shell/key-bindings.zsh
source /usr/share/fzf/shell/completion.zsh

# fzf ctrl-r and alt-c behavior
FD_OPTIONS="--hidden --exclude .git --exclude node_modules --exclude anaconda3 --exclude go"
# Use git ls-files inside git ripo, otherwise fd
export FZF_DEFAULT_COMMAND="git ls-files --cached --others --exclude-standard | fd --type f 1 $FD_OPTIONS"
export FZF_CTRL_T_COMMAND="fd $FD_OPTIONS"
export FZF_ALT_C_COMMAND="fd --type d $FD_OPTIONS"

source ~/.p10k.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme


