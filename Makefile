BIN_DIR=$$(pwd)/bin

.PHONY: all
.PHONY: setup
.PHONY: provision

all: setup provision

setup: check.xcode
	@$(BIN_DIR)/install_homebrew
	@$(BIN_DIR)/install_ansible

provision: check.xcode
	@$(BIN_DIR)/execute_ansible

check.xcode:
	@$(BIN_DIR)/check_xcode

