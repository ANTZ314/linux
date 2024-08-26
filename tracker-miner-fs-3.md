# TRACKER-MINER-FS-3:

### To disable Tracker3 on Ubuntu 22.04 and avoid updates:

```
sudo apt-mark hold tracker
sudo apt-mark hold tracker-extract
sudo apt-mark hold tracker-miner-fs

sudo chmod -x /usr/libexec/tracker-extract-3
sudo chmod -x /usr/libexec/tracker-miner-fs-3

tracker3 reset --filesystem --rss # Clean all database
tracker3 daemon --terminate
```

### To undo:

```
sudo apt-mark unhold tracker
sudo apt-mark unhold tracker-extract
sudo apt-mark unhold tracker-miner-fs

sudo chmod +x /usr/libexec/tracker-extract-3
sudo chmod +x /usr/libexec/tracker-miner-fs-3

tracker3 daemon --start
```

This solution is a workaround. But it works.

### To check all settings:

```
gsettings list-recursively | grep Tracker
```