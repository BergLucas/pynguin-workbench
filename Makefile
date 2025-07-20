.PHONY: setup
setup:
	conda env update --prune -f environment.yml

.PHONY: setup-3.12
setup-3.12:
	conda env update --prune -f environment-3.12.yml

.PHONY: install
install:
	poetry -C pynguin env use python3.10
	make -C pynguin install

.PHONY: install-3.12
install-3.12:
	poetry -C pynguin env use python3.12
	make -C pynguin install
