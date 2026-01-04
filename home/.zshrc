# ---- completion ----
# compinit loads zsh's completion system and makes TAB completion work
autoload -Uz compinit
compinit

# ---- line editing ----
# switches ZLE (zsh line editor) keymap to vi-style
bindkey -v

# ---- minimal convenience ----
alias vi='nvim'
alias vim='nvim'

# ---- prompt expansion ----
# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html
# PROMPT="%~ " – just path home-abbreviated rendering (that's how would it like w/o vcs)

setopt PROMPT_SUBST

git_color='%F{#7f9fbf}' # bluish
arc_color='%F{#87afaf}' # teal-ish

check_and_highlight_vcs() {
  local vcs=$1
  local color=$2

  command "$vcs" rev-parse --is-inside-work-tree >/dev/null 2>&1 \
    && print -n "$color"
}

# if not git, try arc
highlight_repo() {
  check_and_highlight_vcs git "$git_color" \
    || check_and_highlight_vcs arc "$arc_color"
}

# one final prompt
PROMPT='$(highlight_repo)%~%f '
