#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

echo "› homebrew/install.sh"

# Check for Homebrew
if test ! $(which brew); then
  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"; then
    echo "  Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
    echo "  Installing Linuxbrew"
    sudo apt-get install ruby-full build-essential curl file git
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi
fi

exit 0
