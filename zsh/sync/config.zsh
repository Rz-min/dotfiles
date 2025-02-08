export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=100000
export HISTFILESIZE=100000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_reduce_blanks
setopt hist_no_store
setopt inc_append_history
setopt share_history

setopt auto_cd
setopt auto_pushd
setopt auto_param_keys

# === Rust ===
source "$HOME/.cargo/env"

# === Python ===
source $HOME/.local/bin/env

# === Node ===
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# === Deno ===
. "/Users/rui/.deno/env"

# === Go ===
export GOROOT=$HOME/golang/go
export GOPATH=$HOME/golang/work
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# === Starship ===
export STARSHIP_CONFIG=$HOME/.starship.toml
eval "$(starship init zsh)"