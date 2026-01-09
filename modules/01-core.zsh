autoload -U colors && colors
setopt PROMPT_SUBST

# Completion system
autoload -Uz compinit && compinit -u

# Flexible completion matching
# - Case insensitive matching
# - Substring matching (match anywhere in the word)
# - Partial word completion
zstyle ':completion:*' matcher-list '' \
  'm:{a-zA-Z}={A-Za-z}' \
  'r:|[._-]=* r:|=*' \
  'l:|=* r:|=*'

# Completion menu styling
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ''

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
