.PHONY: install

INSTALL_DIR ?= /usr/local/lib

install:
	cp bin/crane $(INSTALL_DIR)
