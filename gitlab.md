----------------
# GITLAB COMMANDS:
----------------

Username: 	ANTZpi3  
Password:	-----api3
email: gmail1


#### Pull request URL's:
[raspi](https://github.com/ANTZ314/raspi.git)
[opencv](https://github.com/ANTZ314/OpenCV.git)
[python](https://github.com/ANTZ314/python.git)
[linux](https://github.com/ANTZ314/linux.git)
[prediction](https://github.com/ANTZ314/prediction.git)

----------------------------
### Setup:  
----------------------------

##### Git global setup:

	$ git config --global user.name "ANTONY SMITH"
	$ git config --global user.email "antonysm.tse@gmail.com"

##### Create a new repository:

	$ git clone https://gitlab.com/ANTZ314/gitlab.git
	$ cd gitlab
	$ touch README.md
	$ git add README.md
	$ git commit -m "add README"
	$ git push -u origin master

##### Push an existing folder:

	$ cd existing_folder
	$ git init
	$ git remote add origin https://gitlab.com/ANTZ314/gitlab.git
	$ git add .
	$ git commit -m "Initial commit"
	$ git push -u origin master

##### Push an existing Git repository:

	$ cd existing_repo
	$ git remote rename origin old-origin
	$ git remote add origin https://gitlab.com/ANTZ314/gitlab.git
	$ git push -u origin --all
	$ git push -u origin --tags

