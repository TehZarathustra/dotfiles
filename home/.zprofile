# ~/.zprofile (login-time environment)

# Your user executables first, so my own tools override system ones
# Mechanism: PATH is consulted left-to-right when resolving commands
export PATH="$HOME/.local/bin:$PATH"

# Default editors used by many CLI tools (git, crontab, etc.)
# Mechanism: programs read $EDITOR/$VISUAL to decide what to launch
export EDITOR="nvim"
export VISUAL="nvim"
