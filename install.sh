#!/usr/bin/env sh
set -eu

ROOT="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

# ---- Homebrew (macOS only) ----
if [ "$(uname -s)" = "Darwin" ]; then
  if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrew not found. Install it first."
    exit 1
  fi

  brew bundle install --file="$ROOT/bootstrap/Brewfile"
  brew bundle install --file="$ROOT/bootstrap/Brewfile.apps"
fi

# ---- Dotfile symlinks ----
# WARNING: destructive. Overwrites existing dotfiles without backup

# home
ln -snf "$ROOT/home/.gitconfig" "$HOME/.gitconfig"
ln -snf "$ROOT/home/.editorconfig" "$HOME/.editorconfig"
ln -snf "$ROOT/home/.zprofile" "$HOME/.zprofile"
ln -snf "$ROOT/home/.zshrc" "$HOME/.zshrc"

# tmux
mkdir -p "$HOME/.config/tmux"
ln -snf "$ROOT/config/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"

# alacritty
mkdir -p "$HOME/.config/"
ln -snf "$ROOT/config/alacritty" "$HOME/.config/alacritty"

# neovim
mkdir -p "$HOME/.config/"
ln -snf "$ROOT/config/nvim" "$HOME/.config/nvim"
