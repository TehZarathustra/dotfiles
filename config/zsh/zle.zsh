# NOT STABLE, MIGHT REMOVE

# switches ZLE (zsh line editor) keymap to vi-style
bindkey -v

# disable XON/XOFF so Ctrl-S is safe (tmux prefix)
[[ -t 0 ]] && stty -ixon

# reduces Esc delay (value is in 1/100s)
KEYTIMEOUT=10

# vi-mode cursor shape (blinking)
# 1 = blinking block, 5 = blinking beam
_vi_cursor_insert() { print -n -- $'\e[5 q' }  # blinking beam
_vi_cursor_normal() { print -n -- $'\e[1 q' }  # blinking block

zle-keymap-select() {
  case $KEYMAP in
    vicmd|visual) _vi_cursor_normal ;;
    viins|main)   _vi_cursor_insert ;;
  esac
}

zle-line-init()   { _vi_cursor_insert }
zle-line-finish() { _vi_cursor_insert }

zle -N zle-keymap-select
zle -N zle-line-init
zle -N zle-line-finish
