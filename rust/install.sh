#!/bin/zsh
#
# Install rust
#

if ! [ -x "$(command -v rustup)" ]; then
  echo "  Installing Rust for you."
  yes y | curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#else
#   rustup update
fi


