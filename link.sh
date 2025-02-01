#!/bin/bash
set -euo pipefail

echo "Creating symbolic links..."
echo $DOTFILES_DIR

for file in "$DOTFILES_DIR"/*/.[^.]*; do

  if [[ $file == "$DOTFILES_DIR/." || $file == "$DOTFILES_DIR/.." ]]; then
    continue
  fi

  link_name=~/${file#"$DOTFILES_DIR"/*/}

  if [ -e "$link_name" ]; then
    echo "File already exist: $link_name, It will be overwritten"
  fi

  ln -sfn "$file" "$link_name"
  echo "Link: $file -> $link_name"
done

echo "Setup completed!"
