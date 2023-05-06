#!/bin/zsh

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

brew bundle --global

# for docker in Apple Silicon
softwareupdate --install-rosetta --agree-to-license