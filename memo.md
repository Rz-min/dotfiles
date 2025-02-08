


```
eval $(/opt/homebrew/bin/brew shellenv)

# === Rust ===
source "$HOME/.cargo/env"

# === Python ===
source $HOME/.local/bin/env

# === Node ===
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# === Starship ===
eval "$(starship init zsh)"
```