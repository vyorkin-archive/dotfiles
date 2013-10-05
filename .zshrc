set -o vi

export EDITOR=vim
export VISUAL=vim

export GREP_COLOR='1;33'

# Use vi key bindings
bindkey -v
# [Crtl-r] - Search backward incrementally for a specofied string
bindkey '^r' history-incremental-search-backward

# Emacs style
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# Bootstrap

export DOTFILES=$HOME/.dotfiles

source $DOTFILES/.functions
source $DOTFILES/.aliases
source $DOTFILES/.git-aliases
