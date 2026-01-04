alias vi='nvim'
alias vim='nvim'

#
# Use GNU ls (coreutils) instead of BSD ls
# Why:
#   - identical ls behavior on macOS and Linux
#   - single flag model (--color=auto) and LS_COLORS
# Effects:
#   - enables GNU-style coloring, permissions, and options
#   - overrides /bin/ls via alias
# Disable if:
#   - you want pure macOS/BSD userland (ls -G + LSCOLORS)
#   - coreutils is not available on the system
# Requires:
#   - brew install coreutils (gls in PATH)
alias ls='gls --color=auto'
alias ll='gls -lah --color=auto'
