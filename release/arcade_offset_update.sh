#!/bin/bash
#

echo 

echo "*** WARNING: this program will completely erase and replace your Arcade Offset directory! Please ensure to back up your customized files."

echo 

echo "Press ctrl-c to exit or any key to continue..."

read -n 1

curl -s --insecure --fail --location https://raw.githubusercontent.com/atrac17/Arcade_Offset/main/release/arcade_offset_updater.sh | bash -

exit 0
