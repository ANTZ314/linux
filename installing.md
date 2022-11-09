# INSTALLING & REMOVING FILES/PACKAGES:

### Updating multiple PIP packages:

1. Output a list of installed packages to test file:
```
pip freeze > requirements.txt
```
2. Change all "==" to ">="
```
Sublime Editor -> highlight "==" -> Find -> Replace -> change to ">=" -> Replace All
```
3. Run update:
```
pip install -r requirements.txt --upgrade
```

---
#### To install *.tar.xz:

Decompress (expand the contents):

	tar xf [filename]

Then the commands are, from the folder:

	./configure
	make
	sudo make install

**Possibly:**

	tl;dr, use tar xf [filename]

---
#### INSTALLING .deb FILES:

To install use the dpkg command:

	cd /home/antz/Downloads/
	sudo dpkg -i debfile.deb

---
#### Extract any ".gz" file:

	gunzip blah.img.gz

---
#### Self extracting:

Make executable:

	chmod u+x file.tgz.bin
	Run:
	./file.tgz.bin

---
#### Unzip file:

	unzip file.zip -d destination_folder
	
#### Undo/Reverse Unzip:

	unzip -Z -1 /path/to/zip/file.zip | xargs -I{} rm -rf {}

---
#### Extract .rar folder:

	-> sudo apt-get install unrar		<- if not already
	-> unrar e -r Name.rar

---
#### To install some file *.tar.gz:

Open a console, and go to the directory where the file is:

	->  tar -xzfv file.tar.gz
	->  tar xzf file.tar.gz

* [x] The x stand for extract, it is mandatory when a tar file shall be extracted.
* [z] The z option tells tar that the archive that shall be unpacked is in gzip format.
* [f] This option instructs tar to read the archive content from a file, in this case the file myarchive.tar.gz
* [v] The stands for verbose, it will show the file names while they get unpacked

Read the file INSTALL and/or README to know if you need some dependencies.

Most of the times you only need to:

	->  ./configure
	->  make
	->  sudo make install

---
#### Create tar.gz Files:

	tar pczf myarchive.tar.gz /home/till/mydocuments

* [p] This option stand for "preserve", it instructs tar to store details on file owner and file permissions in the archive.
* [c] Stands for create. This option is mandatory when a file is created.
* [z] The z option enables gzip compression.
* [f] The file option tells tar to create an archive file. Tar will send the output to stdout if this option is omitted.

---
#### To install "file.run" file:

Assume the file is called some-app.run and is in the folder /home/user/Downloads. You will need to modify these instructions to fit your situation.

Open a terminal (Applications->Accessories->Terminal).

    enter: cd /home/user/Downloads
    enter: chmod +x some-app.run

    enter: ./some-app.run

if step 4 fails with a message including 'permission denied', try entering:

	sudo ./some-app.run 

(you will need to enter your password for this).

---
#### Create & run C file from Treminal:

create c file:

	gedit path/folder/file.c

Compile and create object file:

	gcc -o file file.c

Execute (object name):

	./file

---
## To Completely Remove a Package:


	-> sudo apt-get purge --auto-remove packagename

it will purge required packages along with dependencies that are installed 
with that packages. **--auto-remove** option work similar to  **sudo apt-get autoremove**

Also:

---
#### Other ways of completely removing Apps:

	sudo apt-get remove application
	sudo apt-get remove application*

	sudo apt-get remove --purge application
	sudo apt-get remove --purge application*

	sudo apt-get purge application
	sudo apt-get purge application*

---
