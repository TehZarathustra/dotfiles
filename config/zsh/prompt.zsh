setopt PROMPT_SUBST

git_color="%F{$COLOR_ACCENT_1}"
arc_color="%F{$COLOR_ACCENT_2}"

check_and_highlight_vcs() {
  local vcs=$1
  local color=$2

  command "$vcs" rev-parse --is-inside-work-tree >/dev/null 2>&1 \
    && print -n "$color"
}

# if not git, try arc
# @TODO add check if arc istalled (optionally, it will silently error otherwise)
highlight_repo() {
  check_and_highlight_vcs git "$git_color" \
    || check_and_highlight_vcs arc "$arc_color"
}

# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html
PROMPT='$(highlight_repo)%~%f '
