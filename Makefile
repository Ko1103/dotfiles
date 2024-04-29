# This target installs dependencies using Homebrew
brew:
	brew bundle
update-brewfile:
	brew bundle dump --force
