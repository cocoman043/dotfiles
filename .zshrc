export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="mh"
source $ZSH/oh-my-zsh.sh

export PATH="/home/r/.local/bin:$PATH"
eval "$(zoxide init zsh)"

alias cd='z'

alias yay='~/dotfiles/scripts/installpkg.sh'
