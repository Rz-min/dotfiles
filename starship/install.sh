#!/bin/bash

if command -v starship &> /dev/null; then
  echo "starship already installed"
else
  echo "Start starship install..."
  curl -sS https://starship.rs/install.sh | sh
fi

echo "starship install done"
