#!/bin/bash

set -euo pipefail

echo "Start setup up ..."

REPO_URL="https://github.com/Rz-min/dotfiles.git"
DOTFILES_DIR="$HOME/dotfiles"

if [ ! -d "$DOTFILES_DIR" ]; then
  mkdir -p "$DOTFILES_DIR"
fi

if [ -d "$DOTFILES_DIR/.git" ]; then
  echo "dotfiles repository already exists. Skipping."
else
  echo "dotfiles repository not found. Cloning..."
  git clone "$REPO_URL" "$DOTFILES_DIR"
fi

OS=$(uname -s | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)

INSTALL_SCRIPT=""

case "$OS" in
  darwin)
    case "$ARCH" in
      x86_64)
        echo "Not support. OS=${OS}, Arch=${ARCH}"
        exit 1
        ;;
      arm64)
        INSTALL_SCRIPT="install_darwin_arm64.sh"
        ;;
      *)
        echo "Not support. OS=${OS}, Arch=${ARCH}"
        exit 1
        ;;
    esac
    ;;
  linux)
    case "$ARCH" in
      x86_64)
        #INSTALL_SCRIPT="install_linux_amd64.sh"
        echo "Not support. OS=${OS}, Arch=${ARCH}"
        exit 1
        ;;
      aarch64)
        #INSTALL_SCRIPT="install_linux_arm64.sh"
        echo "Not support. OS=${OS}, Arch=${ARCH}"
        exit 1
        ;;
      *)
        echo "Not support. OS=${OS}, Arch=${ARCH}"
        exit 1
        ;;
    esac
    ;;
  *)
    echo "Not support. OS=${OS}, Arch=${ARCH}"
    exit 1
    ;;
esac

echo "Running $INSTALL_SCRIPT..."
cd "$DOTFILES_DIR"
chmod +x "$DOTFILES_DIR/$INSTALL_SCRIPT"
"$DOTFILES_DIR/$INSTALL_SCRIPT"

echo "Setup completed successfully!"
