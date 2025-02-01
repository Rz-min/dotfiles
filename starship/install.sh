#!/bin/bash

echo "Start starship install..."

if command -v starship &> /dev/null; then
  echo "starship already installed"
else
  curl -sS https://starship.rs/install.sh | sh
fi

echo "starship install done"
