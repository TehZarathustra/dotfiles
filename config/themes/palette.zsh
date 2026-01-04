# palette loader
# single entry point for colors used by dotfiles

# theme selection
# precedence:
# 1. DOTFILES_THEME env var
# 2. default theme
: "${DOTFILES_THEME:=habamax}"

# resolve theme file
THEME_FILE="$HOME/dotfiles/config/themes/${DOTFILES_THEME}.zsh"

# [[ -f "$THEME_FILE" ]] test if file exists and is a regular file (not a folder/symlink)
# print -u2 writes the error message to stderr (not normal output)
# return 1 aborts sourcing of this file without killing the shell
if [[ ! -f "$THEME_FILE" ]]; then
  print -u2 "palette.zsh: theme not found: $THEME_FILE"
  return 1
fi

# loads theme
source "$THEME_FILE"
