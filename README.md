# 📜 Deneir Script

The template for continuous and integrated research

## ☑️ Requirements

Before starting the project make sure these requirements are available:

- [conda][conda]. For setting up your research environment and python dependencies.
- [dvc][dvc]. For versioning your data.
- [git][git]. For versioning your code.

## 🛠️ Setup

**NOTE:** For each new project it is advisable to change the environment name
and to make sure that the required modules are in the `requirements.txt` file.

### Setup the environment

1. Change the `REPO_NAME` variable in `Makefile`.

2. Change the modules in the `requirements.txt` file.

3. Setup the conda environment by running:
   ```bash
   make setup
   ```
   This will create the conda environment and install the modules.

### Activate the environment

To activate the newly set environment run:

```bash
conda activate $(REPO_NAME)
```

### Deactivate the environment

When the environment is not in use anymore deactivate it by running:

```bash
conda deactivate
```

### (optional) Install PyTorch

Based on your CUDA drivers install the appropriate **Pytorch** version.
Please reference the instructions [here][pytorch].

1. Change the `CUDA_VERSION` to the version you intend to use in the project.

2. Install pytorch packages by running:
   ```bash
   make pytorch
   ```

### (optional) Install Jupyter Extension Configurator

If one will use Jupyter Notebook or Lab the jupyter extension configurator
needs to be installed as well.

```bash
make jupyter
```

## 📊 Experiments

TODO

## 📚 Publications

In case you use any of the components for your research,
please refer to (and cite) the papers:

- TODO: Paper

### 📓 Related work

- TODO: Paper
- TODO: Paper
- TODO: Paper

## 📣 Acknowledgments

TODO

[git]: https://git-scm.com/
[dvc]: https://dvc.org/
[conda]: https://docs.conda.io/en/latest/
[pytorch]: https://pytorch.org/
