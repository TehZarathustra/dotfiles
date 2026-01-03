# ~/.zshrc

# ---- completion ----
# Mechanism: compinit loads zsh's completion system and makes TAB completion work
autoload -Uz compinit
compinit

# ---- line editing ----
# Mechanism: switches ZLE (zsh line editor) keymap to vi-style
bindkey -v

# ---- minimal convenience ----
# Mechanism: alias is a pre-parse token substitution for interactive commands
alias vi='nvim'
alias vim='nvim'
