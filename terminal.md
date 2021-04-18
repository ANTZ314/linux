# Linux System Commands

---
#### Basic Commands:

	space in file name - use '\ '
	date	 		- see date and time
	cal	 			- view calendar
	df	 			- view free disk space
	pwd	 			- Print name of current working directory
	cd ~/Folder		- Change directory
	cd ..	 		- Goto parent folder
	cd ./xx	 		- Goto child folder
	cd ./folder\name	- Go into Folder with ' ' space in name:
	ls	 			- List directory contents
	cp 				- Copy files and directories
	mv 				- Move/rename files and directories
	mkdir 			- Create directories
	rm 				- Remove files
	rmdir			- Remove directories
	ln 				- Create hard and symbolic links
	ls -l 			- list files & details
	ls -laSh 		- list all files in size order with file size

Open any file in its Default App:

	xdg-open <file_name>

Remove a file:

	rm -rf filepath/filename

Remove folder & sub-directories:
rm -r folder

Remove all sub-directories but not folder:

	rm -rfv dontDeleteMe/*

Copy item to directory:

	cp item directory

Copy multiple items into a directory:

	cp item1 item2
	copy single file/directory (item1) to file/directory (item2)

Wildcards [pg46]:

	*		- All Files
	g*		- Any file beginning with 'g'
	b* .txt	- Any file beginning with 'b' & ending with '.txt'
	[abc]*	- Any file starting with 'a', 'b' or 'c'


---
#### Unzip file:

	unzip file.zip -d destination_folder

---
#### Extract .rar folder:

	sudo apt-get install unrar		# if not already
	unrar e -r Name.rar

---
#### Extract img.xz image files:

	unxz filename.img.xz


---
#### Run file in Default Program:

	xdg-open file.ext


---
#### Download from Youtube:

Goto folder you want download in:

	sudo youtube-dl (Web-Link)


---
#### Find tool but dont know package name:

	-> man -k <keyword>


---
#### Link 2 images (imagemagic):

Horizontally:

	convert file1.png file2.png +append out.png 

Vertically:

	convert file1.png file2.png -append out.png 


---
Hardlinks
Symbolic Links
---

'less' is a Text Viewer:

open -> less filename

* "q" to exit
* Up/"b" to scroll back a page
* Down/'space' to scroll forward
* Up Arrow to scroll up one line [more on pg 40]


---
#### All 'list' Options:

	ls -a					- list all files including hidden file starting with '.'
	ls --color				- colored list [=always/never/auto]
	ls -d					- list directories - with ' */'
	ls -F					- add one char of */=>@| to enteries
	ls -i					- list file's inode index number
	ls -l					- list with long format - show permissions
	ls -la					- list long format including hidden files
	ls -lh					- list long format with readable file size
	ls -ls					- list with long format with file size
	ls -r					- list in reverse order
	ls -R					- list recursively directory tree
	ls -s					- list file size
	ls -S					- sort by file size
	ls -t					- sort by time & date
	ls -X					- sort by extension name
	ls -d $PWD/*			- List files and directories with full path
	ls -R | grep '\.png$'	- list names based on extension


---
#### 'grep' Options/Examples:

1. Search and Find Files:
	Example:
	
		$ dpkg -l | grep -i python
		
	Explanation:

		-> dpkg –l			= lists installed *.deb packages
		-> grep –i python	= filter " ignore-case", ignore all but 'python'

2. Search and Filter Files:
	Example:
		
		$ grep –v “#”  /etc/apache2/sites-available/default-ssl
	
	Explanation:
	
		-> Print all lines in doc that are not commented '#'
		-> –v option tells grep to invert its output

3. Find all .mp3 Files Only:

	Example:

		$ find . –name “*.mp3” | grep –i JayZ | grep –vi “remix”

	Explanation:

		-> print all of the files with a *.mp3 extension
		-> pipe1 - grep –i to filter out & print all files with the name “JayZ”
		-> pipe2 - grep –vi to filter out and NOT print all filenames with “remix”


[Continue...](https://www.tecmint.com/12-practical-examples-of-linux-grep-command/)
