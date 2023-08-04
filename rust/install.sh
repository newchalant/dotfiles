#!/bin/zsh
#
# Install rust
#

if ! [ -x "$(command -v rustup)" ]; then
  echo "  Installing Rust for you."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
#else
#   rustup update
fi


