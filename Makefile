.PHONY: setup
setup:
	conda env update --prune -f environment.yml

.PHONY: install
install:
	poetry -C pynguin env use python3.10
	make -C pynguin install
