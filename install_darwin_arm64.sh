#/bin/bash

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

source ~/dotfiles/brew-init.sh

