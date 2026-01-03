#!/usr/bin/env sh
set -eu

ls -l \
  "$HOME/.gitconfig" \
  "$HOME/.editorconfig" \
  "$HOME/.zprofile" \
  "$HOME/.zshrc"
