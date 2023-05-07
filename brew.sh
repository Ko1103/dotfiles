#!/bin/zsh

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

brew bundle --global

# Check if running on Apple Silicon
if [[ $(uname -p) == "arm" ]]; then
  softwareupdate --install-rosetta --agree-to-license
fi