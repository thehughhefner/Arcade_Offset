#!/bin/bash
#

echo 

echo "*** WARNING: this program will completely erase and replace your Arcade Offset directory! Please ensure to back up your customized files."

echo 

echo "Press ctrl-c to exit or any key to continue..."

read -n 1

echo "Arcade Offset Updater"

echo 

echo -n "Grabbing latest Arcade Offset MRAs..."

echo 

rm -rf "/media/fat/_Arcade/_Arcade Offset" &&

mkdir -p "/media/fat/_Arcade/_Arcade Offset" &&

cd "/media/fat/_Arcade/_Arcade Offset" &&

curl -s --insecure https://raw.githubusercontent.com/atrac17/Arcade_Offset/main/release/misterfpga_arcade_offset-20200625.txz | tar -Jxf - --no-same-owner --no-same-permissions &&

echo 

echo "Update Complete"

echo 

exit 0