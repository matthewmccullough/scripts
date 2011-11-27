#!/bin/bash

if [ -n "$3" ]; then ARG_ERR=ERR; fi
if [ -z "$1" ]; then ARG_ERR=ERR; fi
if [ -n "$ARG_ERR" ];
then
    echo "usage: ramdisk <size in MB> [device name]"
    exit
fi
MB_SIZE=$1
let "MB_SIZE *= 2048"
echo Creating ${MB_SIZE} 512-blocks ramdisk
CREATED_RAMDISK=`hdid -nomount ram://${MB_SIZE}`
echo New block device: ${CREATED_RAMDISK}
if [ -n "$2" ];
then
    DISK_NAME=$2
else
    DISK_NAME=`basename ${CREATED_RAMDISK}`
fi
echo Creating volume with label: ${DISK_NAME}
newfs_hfs -v ${DISK_NAME} /dev/r$CREATED_RAMDISK
echo Mounting in /Volumes/${DISK_NAME}
diskutil mount ${CREATED_RAMDISK}