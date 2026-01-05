brew_apps_install() {
  : "${ROOT:?ROOT must be set}"

  # skips but logs
  if [ "$(uname -s)" != "Darwin" ]; then
    echo "skip: brew apps (non-macOS)" >&2
    return 0
  fi

  command -v brew >/dev/null 2>&1 || {
    echo "error: Homebrew not found" >&2
      return 1
    }

  brew bundle --file="$ROOT/bootstrap/Brewfile.apps"
}
