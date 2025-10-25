SHELL:=$(shell which bash)

#
# DO NOT MODIFY ABOVE
#

#
# COMPILE SETTINGS START (you can modify below safely)
#

# nothing here yet...

# COMPILE SETTINGS END (you can modify above safely)

#
# DO NOT MODIFY BELOW
#

PROJECT_ROOT:=$(shell git rev-parse --show-toplevel)
PROJECT_BUILD:=$(PROJECT_ROOT)/build/
PROJECT_SRC:=$(PROJECT_ROOT)/src/

CC:=$(shell which clang)

EXEC_NAME:=soli

.phony: all help build clean

all: help

help:
	@echo "Sol Makefile Help Page"
	@echo "make targets:"
	@echo "  build - build an interpreter executable for standalone use"
	@echo "  clean - remove any build artifacts"

build: clean
	@echo "Target [build] running..."
	mkdir -p $(PROJECT_BUILD)
	$(CC) $(PROJECT_SRC)/*.c -I $(PROJECT_SRC)/*.h -o $(PROJECT_BUILD)/$(EXEC_NAME)

clean:
	@echo "Target [clean] running..."
	rm -rf $(PROJECT_BUILD)
