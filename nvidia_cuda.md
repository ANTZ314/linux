# STEPS TAKEN:

### SYSTEM SPECS:
> MSI - 11th Gen Intel® Core™ i7-11800H @ 2.30GHz × 16
> NVIDIA Corporation GA106M [GeForce RTX 3060 Mobile
> 16Gb RAM running Ubuntu 22.04

### Install Anaconda:
```
sudo apt install curl
mkdir tmp
cd tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
bash Anaconda3-2022.10-Linux-x86_64.sh
source ~/.bashrc

conda -V
conda update conda
conda update anaconda
```

### Install Nvidia Driver:
V01 [2021]:
```
sudo ubuntu-drivers list				# List available drivers
sudo ubuntu-drivers install nvidia:515 	# Install specified driver
reboot
```


### Create and run Conda Virtual with Spyder 5:
**INSTALL**
```
conda create -c conda-forge -n spyder-env spyder numpy scipy pandas matplotlib sympy cython
```
**USE CONDA-FORGE:**
```
conda activate spyder-env
conda config --env --add channels conda-forge
conda config --env --set channel_priority strict
```

**UPDATE:**
```
conda update -n base conda
conda activate spyder-env
conda update spyder
```

**CHECK:**
```
conda list Spyder$
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


### Install missing packages:
```
conda install pytorch
```
* Included cudatoolkit / cudnn / matplotlib / pandas / numpy
* Non Included: torchvision / tensorflow-gpu / sklearn / keras
```
conda install torchvision
conda install tensorflow-gpu				<-- GPU: 1
conda install -c conda-forge scikit-learn
```

================================================================
### Check Installations:
================================================================
conda activate spyder-env

**Driver Check:**
```
nvidia-smi
cat /proc/driver/nvidia/version
```
**CUDA Check:**
```
conda list cudatoolkit		<-- 11.7.0
conda list cudnn			<-- 8.4.1.50
nvcc --version				<-- not found
```
**Tensoflow Check:**
```
import tensorflow as tf
print("Num GPUs Available: ", len(tf.config.list_physical_devices('GPU')))
```
**CUDA Check:**
```
>>> import torch
>>> print(torch.version.cuda)	<-- 11.2
```
**Sub-Packages Check:**
```
import tensorflow as tf
import keras
import torch
import sklearn
import matplotlib
import pandas
from torchvision.models import resnet50
```

================================================================
### Final Results:
================================================================
cat /proc/driver/nvidia/version
```
NVRM version: NVIDIA UNIX x86_64 Kernel Module  515.65.01  Wed Jul 20 14:00:58 UTC 2022
GCC version:
```
nvidia-smi
```
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 515.65.01    Driver Version: 515.65.01    CUDA Version: 11.7     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|                               |                      |               MIG M. |
|===============================+======================+======================|
|   0  NVIDIA GeForce ...  Off  | 00000000:01:00.0 Off |                  N/A |
| N/A   30C    P0    22W /  N/A |      5MiB /  6144MiB |      0%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+
                                                                               
+-----------------------------------------------------------------------------+
| Processes:                                                                  |
|  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
|        ID   ID                                                   Usage      |
|=============================================================================|
|    0   N/A  N/A      1922      G   /usr/lib/xorg/Xorg                  4MiB |
+-----------------------------------------------------------------------------+
```
conda list cudatoolkit
conda list cudnn	
```
# Name                    Version                   Build  Channel
cudatoolkit               11.7.0              hd8887f6_10    conda-forge
cudnn                     8.4.1.50             hed8a83a_0    conda-forge
```
nvcc --version
```
Command 'nvcc' not found, but can be installed with:
sudo apt install nvidia-cuda-toolkit
```

In Python, the GPU is now recognised:
```
import tensorflow as tf
print("Num GPUs Available: ", len(tf.config.list_physical_devices('GPU')))

Returns: Num GPUs Available:  1
```