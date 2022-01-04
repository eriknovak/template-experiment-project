# specify the repository environment name
# TODO: change the environment name
REPO_NAME := deneir-script
CUDA_VERSION := 11.1

.ONESHELL:
SHELL=/bin/bash
CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate

# setup the experiment environment
setup: requirements.txt setup.py
	conda create --name $(REPO_NAME) python=3.8 pip --yes
	$(CONDA_ACTIVATE) $(REPO_NAME)
	pip install -e .

# install pytorch in the experiment environment
pytorch: setup
	conda install -n $(REPO_NAME) pytorch torchvision torchaudio cudatoolkit=$(CUDA_VERSION) -c pytorch -c nvidia --yes

# install jupyter extensions configurator
jupyter: setup
	conda install -n $(REPO_NAME) jupyter_nbextensions_configurator -c conda-forge --yes

# clean the project
clean:
	rm -rf .eggs deneir_script.egg-info
	conda env remove -n $(REPO_NAME)