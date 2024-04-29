# This target installs dependencies using Homebrew
brew:
	brew bundle
update-brewfile:
	brew bundle dump --force

help:
	@echo "Commands"
	@echo " brew : Install packages from Brewfile"
	@echo " update-brewfile : Update Brewfile with currently installed packages"
