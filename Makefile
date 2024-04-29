# This target installs dependencies using Homebrew
brew:
	brew bundle --file=.bin/Brewfile
update-brewfile:
	brew bundle dump --force --file=.bin/Brewfile

help:
	@echo "Commands"
	@echo " brew : Install packages from Brewfile"
	@echo " update-brewfile : Update Brewfile with currently installed packages"
