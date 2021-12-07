# Virtual Environments

### List Virtualenvs:

OPTION (1):

	$ lsvirtualenv -b 
	# -OR-  #
	$ lsvirtualenv -l

OPTION (2):

	$ ls ~/virtualenvironment/

---
## VIRTUAL ENVIRONMENT - OPTION 1:

Install Virtualenv (1):

	sudo apt-get install python-virtualenv
	sudo pip install virtualenv

---
## Virtual Environment Commands:

Verify if Virtualenv is installed:

	$ virtualenv --version

List all VirtEnvs:

	$ lsvirtualenv -b

Create new env:

	$ mkvirtualenv EnvName -p python3

To Activate:

	$ workon cv

Exit:

	$ deactivate

Delete:

	$ rmvirtualenv EnvName


---
## VIRTUAL ENVIRONMENT - OPTION 2:

### Install Virtualenv (2):

	wget https://bootstrap.pypa.io/get-pip.py
	sudo python3 get-pip.py

	sudo pip install virtualenv virtualenvwrapper
	sudo rm -rf ~/get-pip.py ~/.cache/pip

	sudo nano ~/.profile

#### Write the following:

	# virtualenv and virtualenvwrapper
	export WORKON_HOME=$HOME/.virtualenvs
	export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
	source /usr/local/bin/virtualenvwrapper.sh

#### Reload the file:

	$ source ~/.profile


### Setup and Use Virtualenv:

#### Create a directory (if not already created):

	$ mkdir ~/virtualenvironment

#### Create the environment:

	$ virtualenv ~/virtualenvironment/my_new_app

#### To activate:

	$ source ~/virtualenvironment/my_new_app/bin/activate

eg:

	$ source ~/virtualenvironment/iot/bin/activate

#### Remove the environment:

Delete the containing folder?

	$ rm -r ~/virtualenvironment/my_new_app

---
##Virtual Environment:

Get and Install:

	$ sudo pip install virtualenv virtualenvwrapper
	$ sudo rm -rf ~/get-pip.py ~/.cache/pip

	$ echo -e "\n# virtualenv and virtualenvwrapper" >> ~/.profile
	$ echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.profile
	$ echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.profile
	$ echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.profile
	
	$ source ~/.profile

---
### View which version is installed:

	$ 'application' --version	[eg. python --version]


####Permissions:

	$ chmod 777 *.py		- all permissions aloud for all python files
	$ chmod 700 file.ext	- read/write/execute for me only
