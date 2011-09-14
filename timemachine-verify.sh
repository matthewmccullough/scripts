#!/bin/bash

# Change the working directory to the Latest folder on the Time Machine disk and report it
cd /Volumes/EXT-ZEUS-TM/Backups.backupdb/*/Latest/*/
echo "Current folder on backup disk: $(pwd -P)"

# Diff the current directory (the backup volume's Latest folder) against / (the root of the main disk)
# Redirect error output to system out and tee all output to a log file on the desktop
sudo diff -qr . / 2>&1 | tee ~/Desktop/timemachine-diff.log
