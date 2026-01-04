source "$HOME/dotfiles/config/themes/palette.zsh"

# if not interactive, stop here
[[ -o interactive ]] || return

# interactive
source "$HOME/dotfiles/config/zsh/aliases.zsh"
source "$HOME/dotfiles/config/zsh/completion.zsh"
source "$HOME/dotfiles/config/zsh/prompt.zsh"
source "$HOME/dotfiles/config/zsh/zle.zsh"

