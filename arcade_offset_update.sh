#!/bin/bash
#

echo "      __    _                      _          ___   __  __          _"
echo "     / /   / \   _ __ ___ __ _  __| | ___    / _ \ / _|/ _|___  ___| |_"
echo "    / /   / _ \ |  __/ __/ _  |/ _  |/ _ \  | | | | |_| |_/ __|/ _ \ __|"
echo " _ / /   / ___ \| | | (_| (_| | (_| |  __/  | |_| |  _|  _\__ \  __/ |_"
echo "(_)_/___/_/   \_\_|  \___\__,_|\__,_|\___|   \___/|_| |_| |___/\___|\__|"
echo "   |_____|"
echo 
echo "*** WARNING: this program will completely erase and replace your /_Arcade Offset directory!***
    Please ensure to back up your customized files."
echo 
echo "Press ctrl-c to exit or any key to continue..."
read -n 1
curl -s --insecure --fail --location https://raw.githubusercontent.com/atrac17/Arcade_Offset/main/release/arcade_offset_updater.sh | bash -

exit 0
