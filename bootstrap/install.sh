#!/usr/bin/env sh
set -eu

# macOS only
if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Install it first"
  exit 1
fi

brew bundle install --file=Brewfile
brew bundle install --file=Brewfile.apps
