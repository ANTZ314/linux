# Ubuntu Package and System Manipulation Commands:

---
#### Network Checks:

	$ ifconfig


---
#### View CPU information:

	$ cat /proc/cpuinfo

---
#### View free memory:

	$ free -h
	$ df -h


---
#### View which folders are taking up the most space:

	$ sudo du -xh / | grep -P "G\t"


---
#### Find all files with keyword:

	$ find / -name "filename*"					<- case sensitive (entire system)
	$ find / -iname "filename*"					<- not case sensitive (entire system)
	$ find ~/dir/ -iname "filename*"			<- in specified directory


---
#### Find/List all files with '.png' extension:

	$ ls -R | grep '\.png$'						<- list just their names
	$ find . -type f -regex ".*\.png" -ls 		<- list each files details
	$ find / -type f -name “*.conf”				<- All regular files ending in .conf
	$ find ~/dir -type d -name "folder"			<- Find directory in sub-directories
	$ find ~/dir -type f -name “xxx*”			<- All files starting with "xxx"


---
#### Find/List all files that DO NOT end with '.png' extension:

	$ find . -type f not -name "*.java"
	$ find . -type f ! -name "*.java"

	Multiple Extensions:
	find . -type f ! -name "*.java" ! -name "*.html"


---
#### Find specific process running:

	$ ps -aux						<- list all processes
	$ ps -fC process-name			<- show just that process details
	$ pgrep process-name			<- get just that processes PID
	$ pkill process-name			<- kill that process


---
#### Restore Ubuntu Desktop (due to python3.5):

	Ctrl+Alt+F1
	$ sudo apt-get install python3-all
	$ sudo apt-get install gnome-terminal
	$ sudo apt-get install --reinstall ubuntu-desktop


---
#### To Restart Unity Panel Bar:

	You can press ALT+F2 -> Run Command: “unity”

OR you could use:
	
	$ sudo service gdm restart


---
#### Re-Sync Time and Date:

	sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
	sudo dpkg-reconfigure tzdata


---
## PACKAGES:

---
#### List all installed packages:

	$ dpkg --list
	$ dpkg -l | less

	$ apt list --installed
	$ dpkg -l
	$ dpkg --get-selections | grep -v deinstall

Search for specific package:

	$ apt-cache search package-name

List pip packages:

	$ pip freezels

To get a list of packages installed locally do this in your terminal:

	$  dpkg --get-selections | grep -v deinstall

(The -v tag "inverts" grep to return non-matching lines)

To get a list of a specific package installed:

	$  dpkg --get-selections | grep postgres

To save that list to a text file called packages on your desktop do this in your terminal:

	$  dpkg --get-selections | grep -v deinstall > ~/Desktop/packages

Alternatively, simply use:

	$  dpkg -l

The apt tool on Ubuntu 14.04 and above makes this very easy:

	$  apt list --installed


---
## Fix broken packages:

	$ sudo apt update --fix-missing
	$ sudo apt install -f
	$ sudo dpkg --configure -a

List packages that need to be removed:

	$ sudo dpkg -l | grep ^..r

Remove the package:

	$ sudo dpkg --remove --force-remove --reinstreq

	$ sudo apt clean
	$ sudo apt update


---
## CLEANUP:

	sudo apt-get autoclean
	sudo apt-get clean
	sudo apt-get autoremove

Use gtkOrphan by going to System--->Administraion--->Remove orphaned packages

	sudo apt-get install gtkorphan


---
#### Clear the '/tmp' folder:

	$ sudo apt-get autoremove
	$ sudo rm -rf /tmp/*

---
#### Remove all files containing the name:

	find /path -type f -name "filename" -delete

---
Remove Item from $PATH:

	-> PATH=$(REMOVE_PART="/opt/specific_item/bin" sh -c 'echo ":$PATH:" | sed "s@:$REMOVE_PART:@:@g;s@^:\(.*\):\$@\1@"')


---
## USB & SD Card:

---
#### Not mounting the SD Card:

lspci

-> Check Read/Write Access:

find /sys -iname \*mmc\* | sed 's#$#/uevent#' | xargs ls -l

-> Give all the mmc uevent files the same access:

find /sys -iname \*mmc\* | sed 's#$#/uevent#' | xargs sudo chmod a+r


---
#### Corrupt USB / SD Card:

List the connected devices:

	$ sudo parted -l

OR

	$ df -h 					--> The disk you want to check should not be listed
	$ sudo fdisk -l

make sure it's unmounted:

	$ umount /dev/sdb			--> mmcblk0

Check for Errors:

	$ sudo fsck -A /dev/sdb

Write all zeros till the end:

	$ sudo dd if=/dev/zero of=/dev/sdb bs=4M			<-- USB
	$ sudo dd if=/dev/zero of=/dev/sdb bs=4096 count=1	<-- SD card 

To Confirm zero write:
dd if=/dev/sda | hexdump -C | head

Then GParted -> Device -> Create Partition Table

---
#### USB Memory Checks:

	
	$ lsusb	- List USB devices (and hardware)
			- Check used/available system memory
	$ lspci | grep USB

---
#### Possible USB Hub Reset:

	$ sudo su
	$ echo -n "0000:00:1a.0" | tee /sys/bus/pci/drivers/ehci-pci/unbind
	$ echo -n "0000:00:1d.0" | tee /sys/bus/pci/drivers/ehci-pci/unbind
	$ echo -n "0000:00:1a.0" | tee /sys/bus/pci/drivers/ehci-pci/bind
	$ echo -n "0000:00:1d.0" | tee /sys/bus/pci/drivers/ehci-pci/bind

---
#### Force erase a USB:

wipefs -a /dev/your-device


---
#### Do Full System Update to Newer Ubuntu:

	alt-F2 -> update-manager -c

Update to latest version:

	$ sudo do-release-upgrade 

You  may need to run first: 

	$ sudo apt install update-manager-core

---
