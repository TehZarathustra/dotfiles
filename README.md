# dotfiles

Minimal and opinionated

## Current stack

- [Alacritty](config/alacritty/alacritty.toml)
- [Tmux](config/tmux/tmux.conf)
- [Neovim](config/nvim)

## Install
```
sh install.sh
```

### What it does

On macOS
- Installs Homebrew formulae and casks from bootstrap/

On all systems
- Symlinks files from home/ into $HOME
- Symlinks configs from config/ into ~/.config/

## Verify

```sh
sh debug.sh
```
