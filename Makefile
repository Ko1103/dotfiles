BIN_DIR := .bin

rosetta:
	@$(BIN_DIR)/rosetta.sh

## Homebrew

brew:
	brew bundle --file=@$(BIN_DIR)/Brewfile
update-brewfile:
	brew bundle dump --force --file=@$(BIN_DIR)/Brewfile

help:
	@echo "Commands"
	@echo " brew : Install packages from Brewfile"
	@echo " update-brewfile : Update Brewfile with currently installed packages"
