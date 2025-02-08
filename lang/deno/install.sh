#!/bin/bash

if command -v deno &> /dev/null; then
  echo "deno already installed"
else
  echo "Start deno install..."
  curl -fsSL https://deno.land/install.sh | sh
fi

echo "deno install done"