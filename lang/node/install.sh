#!/bin/bash

echo "Start node install..."

NVM_VERSION="v0.40.1"

if command -v nvm &> /dev/null; then
  echo "nvm already installed"
else
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash
fi

echo "node install done"
