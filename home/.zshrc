source "$HOME/dotfiles/config/themes/palette.zsh"

# if not interactive, stop here
[[ -o interactive ]] || return

# interactive
source "$HOME/dotfiles/config/zsh/aliases.zsh"
source "$HOME/dotfiles/config/zsh/completion.zsh"
source "$HOME/dotfiles/config/zsh/prompt.zsh"
source "$HOME/dotfiles/config/zsh/zle.zsh"

# nvm (added by nvm install script)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
