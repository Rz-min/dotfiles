#!/bin/bash

NVM_VERSION="v0.40.1"
NVM_DIR="$HOME/.nvm"

if [ -d "$NVM_DIR" ]; then
  echo "nvm is already installed"
else
  echo "Start node install..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash

  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fi

echo "node install done"
