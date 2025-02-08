#! /bin/bash

if command -v go &> /dev/null; then
    echo "go is already installed"
else
    echo "Installing go"
    mkdir -p ~/golang
    curl -LsSf https://go.dev/dl/go1.23.6.darwin-arm64.tar.gz | tar -C ~/golang -xzf -
fi

echo "go install done"