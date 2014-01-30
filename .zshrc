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

bindkey '^[[1;5C' emacs-forward-word
bindkey '^[[1;5D' emacs-backward-word

# Oh my zsh

export ZSH=$HOME/.oh-my-zsh

DISABLE_UPDATE_PROMPT=true

plugins=(
  ant fasd bower battery brew bundler cap cabal coffee docker cp gem
  git github heroku history history-substring-search jruby knife lein
  node npm osx perl python rails rake rsync ruby rvm scala sublime tmux
  tmuxinator torrent vagrant vundle redis-cli web-search zeus
)

source $ZSH/oh-my-zsh.sh

# Use either zsh plugins (fast) or antigen bundler (slow)
# source $HOME/.antigen-bundler

autoload -U promptinit && promptinit
# prompt pure

source $HOME/.powerline-shell

# disable annoying autocorrect feature
unsetopt correct_all

# auto predict
autoload predict-on
autoload predict-off

# you may also wish to bind it to some keys...
zle -N predict-on
zle -N predict-off
bindkey '^X1' predict-on
bindkey '^X2' predict-off

# Bootstrap

export DOTFILES=$HOME/.dotfiles

source $DOTFILES/.functions
source $DOTFILES/.aliases
source $DOTFILES/.git-aliases

