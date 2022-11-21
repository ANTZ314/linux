# ANACONDA NOTES:

### Install Anaconda:
```
sudo apt install curl
mkdir tmp
cd tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
bash Anaconda3-2022.10-Linux-x86_64.sh
source ~/.bashrc
```

### Update CONDA:
```
conda -V
conda update conda
conda update anaconda
```

## Use CONDA:
```
conda info --envs 	# List environments
conda activate name	# Activate
conda deactivate	# exit
```


## SPYDER:

**INSTALL**
```
conda create -c conda-forge -n spyder-env spyder numpy scipy pandas matplotlib sympy cython
```
#### Update to latest version:
```
conda update -n base conda
conda activate spyder-env
conda update spyder
```

### Install CUDA Toolkit:

**Install conda-forge:**
```
conda config --add channels conda-forge
conda config --set channel_priority strict

```

**Install CUDA & CUDNN:**
With CONDA:
```
# - LIST -
conda search cudatoolkit --channel conda-forge
conda search cudnn --channel conda-forge
# - Install -
conda install cudatoolkit					<-- 'nvcc' still version not found
conda install cudnn
```

### Install pytorch:
```
conda install -c pytorch pytorch
```


#### NOTES:
* F5 - Run current file
* F9 - Run selection


### EXTRAS:
Installed package of scikit-learn can be accelerated using **scikit-learn-intelex**.
More details are available [here](https://intel.github.io/scikit-learn-intelex)
For example:

	$ conda install scikit-learn-intelex
	$ python -m sklearnex my_application.py