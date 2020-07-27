.ONESHELL:
.PHONY: build clean jupyter all

SHELL=/bin/bash
CONDA_ENV_NAME ?=jupyter-refactoring
CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate $(CONDA_ENV_NAME)
	
build:
	@echo ""
	@echo "$(ccso)--> Preparing conda environment $(ccend)"
	$(MAKE) create
	$(MAKE) ipykernel

clean:
	@echo ""
	@echo "$(ccso)--> Cleaning... $(ccend)"
	$(MAKE) remove-kernel
	$(MAKE) remove-environment

create: 
	@echo ""
	@echo "$(ccso)--> Creating conda environment $(ccend)"
	conda env create -f environment.yml
	
ipykernel: 
	@echo ""
	@echo "$(ccso)--> Install ipykernel to be used by Jupyter notebooks $(ccend)"
	$(CONDA_ACTIVATE) && python -s -m ipykernel install --user --name=$(CONDA_ENV_NAME)

jupyter:
	@echo ""
	@echo "$(ccso)--> Running jupyter lab $(ccend)"
	$(CONDA_ACTIVATE) && jupyter lab

remove-environment: 
	@echo ""
	@echo "$(ccso)--> Remove conda environment $(ccend)"
	conda env remove --name $(CONDA_ENV_NAME)

remove-kernel: 
	@echo ""
	@echo "$(ccso)--> Remove ipykernel from Jupyter lab $(ccend)"
	$(CONDA_ACTIVATE) && jupyter kernelspec uninstall $(CONDA_ENV_NAME)

all: build jupyter