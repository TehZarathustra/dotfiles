# ~/.zprofile (login-time environment)

# Homebrew environment (macOS)
# Adds Homebrew to PATH and exports Homebrew-related variables
# https://docs.brew.sh/Installation#post-installation-steps
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Default editors used by many CLI tools (git, crontab, etc.)
# programs read $EDITOR/$VISUAL to decide what to launch
export EDITOR="nvim"
export VISUAL="nvim"
