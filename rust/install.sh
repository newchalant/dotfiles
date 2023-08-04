#!/bin/zsh
#
# Install rust
#

if ! [ -x "$(command -v rustup)" ]; then
  echo "  Installing Rust for you."
  yes 1 | curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#else
#   rustup update
fi


