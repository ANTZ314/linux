# GITHUB COMMANDS:


## Access Control:

| 1st Git |	Credentials |
|-|-|
| Username: 	| ANTZ--1 |
|Password:		| (cap)-------a--1 |
|email: 		| infinitum? |

| 2nd Git |	Credentials |
|-|-|
| Username: 	| ANTZ3-- |
| Password:		| --------ap3 | 
| email: 		| gmail2 |


### Configure the local GIT client:

	$ git config --global user.name "ANTZ314"
	$ git config --global user.email "antony.smith411@gmail.com"
	$ git config -l
	$ git config --global credential.helper cache

### Generate a New SSH Key

	$ ssh-keygen -t ed25519 -C "antony.smith411@gmail.com"

### Add the SSH Key to Your GitHub Account

Start the SSH agent in the background:

	$ eval "$(ssh-agent -s)"

Add your SSH private key to the SSH agent:

	$ ssh-add ~/.ssh/id_ed25519

### Add the SSH Key to Your GitHub Account:

* Copy the SSH key to your clipboard:
```
	$ cat ~/.ssh/id_ed25519.pub
```
* Copy the content of the file that is displayed in the terminal.
* Go to GitHub and log in.
* In the top right corner, click your profile photo, then click Settings.
* In the user settings sidebar, click SSH and GPG keys.
* Click New SSH key or Add SSH key.
* In the "Title" field, add a descriptive label for the new key.
* Paste your key into the "Key" field (the whole line is the key).
* Click Add SSH key.
* You may be asked to confirm your GitHub password.

### Test Your SSH Connection:

	$ ssh -T git@github.com

### Change the remote URL to use SSH instead of HTTPS:

	$ git remote set-url origin git@github.com:ANTZ314/REPO.git


---
### Git Token:

**Get Token:** settings -> Developer Settings -> Personal access tokens


#### Pull request URL's:

```
https://github.com/ANTZ314/m_eng.git
https://github.com/ANTZ314/raspi.git
https://github.com/ANTZ314/python.git
https://github.com/ANTZ314/OpenCV.git
https://github.com/ANTZ314/linux.git
https://github.com/ANTZ314/prediction.git
https://github.com/ANTZ314/arduino.git
```
#### [Cheatsheet:](https://github.com/tchapi/markdown-cheatsheet/blob/master/README.md)

---
#### On new repo creation:

* Create new repo in Gihub
* Then loacally:
```
$ mkdir 'same name as repo'
$ cd 'new_dir'
$ git init
$ git remote add origin https://github.com/ANTZ314/rpi_git.git
```
Add files / make changes:
```
$ git add .
$ git commit -m "first commit"
$ git branch -M main
$ git push -u origin main/master
```
---
[GITHUB Tutorial:](http://rogerdudler.github.io/git-guide/)  
[POUWH Repo](https://github.com/Antz411/POUWH.git)

---
#### To get a single file:
First navigate to the file, then click the  **RAW** button.
Use the raw URL in the following **wget** command:

	$ wget -O filename.py https://raw.githubusercontent.com/ANTZ314/Crypto/master/My_Crypto/rnn%5B2018%5D.py

---
#### Replace GIT folder on local system:  

**(include updates)**
Back up the entire folder with all changes to update to the Github Repo  
Delete the entire folder from the directory you want the master folder to be.  
Open the Github Repo and copy the repo URL.  

	$ git clone http://github.com/path/to/repo
Copy and paste (replace) files in new Git folder.
Once replaced, upload to git location.

	$ git add .
	$ git commit -m "comment"
	$ git push origin master

----------------------------
#### Upload a new folder to Repo:
----------------------------
create a new repository:  

	$ git init

Adds all in the folder:  

	$ git add .

Commit all:  

	$ git commit -m "comment"

Add the repo origin:  

	$ git remote add origin https://github.com/AntzXXX/PATH.git

Push all the files to the new Repo:  

	$ git push -u origin master

----------------------------------
#### Upload existing files to new repo:
----------------------------------
Add the repo origin:

	$ git remote add origin https://github.com/AntzXXX/PATH.git

Push all the files to the new Repo:

	$ git push -u origin master

---------------------------------------
#### Cloning an existing Repo to new folder:
---------------------------------------
create a new repository:  

	$ git init

create a working copy of a local repository:  

    $ git clone /link/to/repository  
    $ cd path/to/git/folder  
    $ git status

---------------------------------------
#### BRANCHING:
---------------------------------------
After cloned into empty folder - Go to folder path:

Make sure you have the master (* master):  

	$ git branch

Get the latest updates:  

	$ git pull origin master	# git pull https://github.com/Antz411/POUWH.git master

Now create a branch of the latest:  

	$ git checkout -b new-branch-name	#git checkout -b POUWH_Branch

Check that you're now on that branch (* new-branch)

	$ git branch

==============================  
--> Make the changes you require!!  
==============================

Add the new changes to repo-branch:  

	$ git add File_Names.ext		# git add POUWH_1.X

Check changes:

	$ git status

Commit these changes:

	$ git commit -m "comment"

Push the changes to be available on the repo:  

	$ git push origin <branch_name>

Branch is now up to date with the master

**Other commands**  
Switch back to master  

	$ git checkout master

and delete the branch again  

	$ git branch -d feature_x	# git checkout -b POUWH_Branch

Branch is not available to others unless you push the branch to your remote repository:  

	$ git push origin <branch_name>

-----------------------------------------------------
First add the proposed changes (add it to the Index):  
    
    $ git add <filename>	# add specified file  
    $ git add *				# ?  
    $ git add .				# adds all in the folder  

To add to remote repo (or check origin exists):  

	$ git remote add origin https://github.com/Antz411/POUWH.git

Check status:  

    $ cd path/to/git/folder  
    $ git status

To actually commit (Now the file is committed to the HEAD):  

	$ git commit -m "Commit message"

To send those changes (in HEAD) to your remote repository:  

	$ git push -u origin master


-----------------------------------------------
### UPDATE AND MERGE:
-----------------------------------------------
Update your local repository to the newest commit  

	$ git pull

To merge another branch into your active branch (e.g. master)  

	$ git merge <branch>

Resolve specified conflicts and then mark the changes  

	$ git add <filename>

Before merging changes, you can also preview them by using  

	$ git diff <source_branch> <target_branch>


-----------------------------------------------
### GIT ERRORS:
-----------------------------------------------
Force a push to repo:

	git push https://git.... --force

fatal: 'origin' does not appear to be a git repository
	
	git remote -v
	git remote add origin https://github.com/Antz411/POUWH.git
	git push origin master
	git remote remove origin

Fatal: refusing to merge unrelated histories  

	git pull https://github.com/path.git --allow-unrelated-histories

Git failing due to unrecognized changes  
-> Your branch is ahead of 'origin/master' by 2 commits  
	
    $ git reset --hard origin/master		- didn't work
    
    $ git push origin HEAD:master		- worked

**Remote Origin:**
list:

	git config --get remote.origin.url

Remove (nope):

	git remote remove https://github.com/ANTZ314/--git_name--.git

Add (nope):

	git remote add https://github.com/ANTZ314/--git_name--.git

Change (workds):

	git remote set-url origin https://github.com/ANTZ314/--git_name--.git

** Cannot Pull Due unmatched Head: **

	#Force Pull
	git fetch --all
	git reset --hard origin/master
	git pull origin master