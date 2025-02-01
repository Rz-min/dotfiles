#!/bin/bash

echo "Start python install..."

if command -v uv &> /dev/null; then
  echo "uv already installed"
else
  curl -LsSf https://astral.sh/uv/install.sh | sh
fi

echo "python install done"
