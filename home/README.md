## Quoting rules (zsh):

• Shell macros (alias, functions-as-macros) -> single quotes by default
• Environment variables (export)            -> double quotes by default

## File roles

- `.zprofile` -> login-time environment
- `.zshrc`    -> interactive shell behavior

## Reloading `.zshrc` and `.zprofile`

```sh
source ~/.zshrc

# WARNING: .zprofile is for login-time environment construction
# Changes require a new login shell (new terminal tab/window)
# The line below is shown for learning/debugging only
# source ~/.zprofile
```


