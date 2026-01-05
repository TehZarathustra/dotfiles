# WARNING: destructive. Overwrites existing dotfiles without backup

symlinks_install() {
  : "${ROOT:?ROOT must be set}"
  : "${HOME:?HOME must be set}"

  # home
  ln -snf "$ROOT/home/.gitconfig" "$HOME/.gitconfig"
  ln -snf "$ROOT/home/.editorconfig" "$HOME/.editorconfig"
  ln -snf "$ROOT/home/.zprofile" "$HOME/.zprofile"
  ln -snf "$ROOT/home/.zshrc" "$HOME/.zshrc"

  # ensure ~/.config exists
  mkdir -p "$HOME/.config"

  # tmux
  mkdir -p "$HOME/.config/tmux"
  ln -snf "$ROOT/config/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"

  # alacritty
  rm -rf "$HOME/.config/alacritty"
  ln -snf "$ROOT/config/alacritty" "$HOME/.config/alacritty"

  # neovim
  rm -rf "$HOME/.config/nvim"
  ln -snf "$ROOT/config/nvim" "$HOME/.config/nvim"
}
