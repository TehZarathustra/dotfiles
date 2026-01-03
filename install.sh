#!/usr/bin/env sh
set -eu

ROOT=$(cd "$(dirname "$0")" && pwd)

ln -snf "$ROOT/home/.gitconfig" "$HOME/.gitconfig"
ln -snf "$ROOT/home/.editorconfig" "$HOME/.editorconfig"
