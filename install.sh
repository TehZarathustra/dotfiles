#!/usr/bin/env sh
set -eu

# portable on macOS + Ubuntu + Arch
# NOTE: assumes this script is run via ./install.sh (not via PATH);
# if invoked without a slash, $0 may not resolve to the script directory
ROOT=$(cd "$(dirname "$0")" && pwd)

# @TODO add guards
# install script can silently overwrite real files

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
