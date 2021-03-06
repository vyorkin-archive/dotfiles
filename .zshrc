set -o vi

export EDITOR=vim
export VISUAL=vim

export GREP_COLOR='1;33'

# Use vi key bindings
bindkey -v

# Search backward incrementally for a specofied string
bindkey '^r' history-incremental-search-backward

# Emacs style
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

bindkey '^[[1;5C' emacs-forward-word
bindkey '^[[1;5D' emacs-backward-word

# Oh my zsh

export ZSH=$HOME/.oh-my-zsh

DISABLE_UPDATE_PROMPT=true

# TODO: wait for a bower plugin fix and add it & bundler,
# for now its conflicting with bundler
plugins=(
  ant fasd battery brew cap cabal coffee docker cp gem
  git github heroku history history-substring-search jruby knife lein
  node npm osx perl python rails rake rsync ruby rvm scala sublime tmux
  tmuxinator torrent vagrant vundle redis-cli web-search zeus bower
)

source $ZSH/oh-my-zsh.sh

source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

source $HOME/.zsh-history-substring-search/zsh-history-substring-search.zsh

source $HOME/.zsh-autosuggestions/autosuggestions.zsh
AUTOSUGGESTION_HIGHLIGHT_COLOR=9

# Enable autosuggestions automatically
zle-line-init() {
  zle autosuggest-start
}
zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle
bindkey '^f' vi-forward-word

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

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

# on/off zsh autopredict
zle -N predict-on
zle -N predict-off
bindkey '^X1' predict-on
bindkey '^X2' predict-off

# Bootstrap

export DOTFILES=$HOME/.dotfiles

source $DOTFILES/.functions
source $DOTFILES/.aliases
source $DOTFILES/.git-aliases
