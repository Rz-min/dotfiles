#!/bin/bash

if command -v rustup &> /dev/null; then
  echo "rustup already installed"
else
  echo "Start rust install..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

echo "rust install done"
