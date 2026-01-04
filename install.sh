#!/usr/bin/env sh
set -eu

# portable on macOS + Ubuntu + Arch
# NOTE: Assumes this script is run via ./install.sh (not via PATH);
# if invoked without a slash, $0 may not resolve to the script directory
ROOT=$(cd "$(dirname "$0")" && pwd)

# home
ln -snf "$ROOT/home/.gitconfig" "$HOME/.gitconfig"
ln -snf "$ROOT/home/.editorconfig" "$HOME/.editorconfig"
ln -snf "$ROOT/home/.zprofile" "$HOME/.zprofile"
ln -snf "$ROOT/home/.zshrc" "$HOME/.zshrc"

# tmux
mkdir -p "$HOME/.config/tmux"
ln -snf "$ROOT/config/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"
