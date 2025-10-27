.PHONY: setup
setup:
	conda env update --prune -f environment.yml

.PHONY: setup-3.11
setup-3.11:
	conda env update --prune -f environment-3.11.yml

.PHONY: setup-3.12
setup-3.12:
	conda env update --prune -f environment-3.12.yml

.PHONY: setup-3.13
setup-3.13:
	conda env update --prune -f environment-3.13.yml

.PHONY: setup-3.14
setup-3.14:
	conda env update --prune -f environment-3.14.yml

.PHONY: install
install:
	poetry -C pynguin env use python3.10
	make -C pynguin install

.PHONY: install-3.11
install-3.11:
	poetry -C pynguin env use python3.11
	make -C pynguin install

.PHONY: install-3.12
install-3.12:
	poetry -C pynguin env use python3.12
	make -C pynguin install

.PHONY: install-3.13
install-3.13:
	poetry -C pynguin env use python3.13
	make -C pynguin install

.PHONY: install-3.14
install-3.14:
	poetry -C pynguin env use python3.14
	make -C pynguin install
