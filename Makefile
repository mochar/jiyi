ROOT_DIR := $(shell pwd)
TOOLCHAIN := anzz1/miyoomini-toolchain:latest

anki-pylib:
	git submodule update --init --recursive
	export RELEASE=1
	export PYTHONWARNINGS=default
	export PYTHONPYCACHEPREFIX=anki/out/pycache
	export PYTHON_BINARY=jiyi/bin/python3.9
	cd anki && ./ninja pylib

toolchain:
	docker run -it --rm --network="host" -v "$(ROOT_DIR)":/root/workspace $(TOOLCHAIN) /bin/bash
