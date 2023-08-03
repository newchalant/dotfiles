#!/bin/zsh
#
# Install rust
#

if test ! $(which rustup)
then
  echo "  Installing Rust for you."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#else
#   rustup update
fi


