#!/usr/bin/env sh
set -eu

# Symlink .gitconfig
ROOT=$(cd "$(dirname "$0")" && pwd)

ln -snf "$ROOT/home/.gitconfig" "$HOME/.gitconfig"
