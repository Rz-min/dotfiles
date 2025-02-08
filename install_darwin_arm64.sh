#!/bin/bash

echo "Start Mac setup.."

set -euo pipefail

export DOTFILES_DIR=$(cd $(dirname $0); pwd)

source "$DOTFILES_DIR/link.sh"

if ! command -v brew &> /dev/null; then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo "Homebrew already installed."
fi

source "$DOTFILES_DIR/brew-init.sh"

# === Programming Language ===
source "$DOTFILES_DIR/lang/rust/install.sh"
source "$DOTFILES_DIR/lang/node/install.sh"
source "$DOTFILES_DIR/lang/python/install.sh"
source "$DOTFILES_DIR/lang/deno/install.sh"
source "$DOTFILES_DIR/lang/go/install.sh"

# === Starship ===
source "$DOTFILES_DIR/starship/install.sh"
