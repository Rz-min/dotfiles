#!/bin/bash

if command -v uv &> /dev/null; then
  echo "uv already installed"
else
  echo "Start python install..."
  curl -LsSf https://astral.sh/uv/install.sh | sh
fi

echo "python install done"
