# ANACONDA NOTES:

### Launch Navigator:

	anaconda-navigator

### Auto activating Conda:

	conda config --set auto_activate_base False
	source ~/.bashrc

	conda config --set auto_activate_base True
	source ~/.bashrc

### Update CONDA:

	conda update anaconda

### Install pytorch:

	conda install -c pytorch pytorch
	
### SPYDER:

#### Update to latest version:

	conda update anaconda
	conda install spyder=5.1.5	# Failed

#### NOTES:
* F5 - Run current file
* F9 - Run selection


### EXTRAS:
Installed package of scikit-learn can be accelerated using **scikit-learn-intelex**.
More details are available [here](https://intel.github.io/scikit-learn-intelex)
For example:

	$ conda install scikit-learn-intelex
	$ python -m sklearnex my_application.py