# specify the repository name
REPO_NAME := deneir-script

.ONESHELL:
SHELL=/bin/bash
CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate

# setup the experiment environment
setup: requirements.txt setup.py
	conda create --name $(REPO_NAME) python=3.8 pip --yes
	$(CONDA_ACTIVATE) $(REPO_NAME)
	pip install -e .

# cleans the project
clean:
	rm -rf .eggs
	rm -rf deneir_script.egg-info
	conda env remove -n $(REPO_NAME)