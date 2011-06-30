#!/bin/bash

# Change the working directory to the Latest folder on the Time Machine disk and report it
pushd /Volumes/EXT-ZEUS-TM/Backups.backupdb/*/Latest/*/
export BACKUPVOLUME="$(pwd -P)"
echo "Current folder on backup disk: $BACKUPVOLUME"
popd

# Diff the current directory (the backup volume's Latest folder) against / (the root of the main disk)
# Redirect error output to system out and tee all output to a log file on the desktop
#  sudo diff -qr "$BACKUPVOLUME" / 2>&1 | grep "Only in" | tee ~/Desktop/timemachine-diff.log
sudo diff -qr "$BACKUPVOLUME" / 2>&1 | grep "Only in"
