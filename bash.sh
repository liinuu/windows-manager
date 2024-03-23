#!/bin/bash

echo "loading windows user manager script..."

sudo apt install -y chntpw fdisk

echo "searching partions."

windows_partition=$(sudo fdisk -l | grep -i "ntfs" | awk '{print $1}' | head -n 1)

if [ -z "$windows_partition" ]; then
    echo "Error: Unable to find Windows partion."
    exit 1
fi

echo "found windows partion!"

sudo mount "$windows_partition" /mnt/Microsoft/

echo "mounted windows disk to /mnt/Microsoft/"

cd /mnt/Microsoft/Windows/System32/config/

echo "launching chntpw..."

sudo chntpw -i SAM
