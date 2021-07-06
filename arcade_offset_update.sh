#!/bin/bash
#written by atrac17

RED='\033[0;31m'
PRP='\033[0;35m'
NC='\033[0m'

echo -e "${PRP}             __    _                      _          ___   __  __          _"
echo -e "${PRP}            / /   / \   _ __ ___ __ _  __| | ___    / _ \ / _|/ _|___  ___| |_"
echo -e "${PRP}           / /   / _ \ |  __/ __/ _  |/ _  |/ _ \  | | | | |_| |_/ __|/ _ \ __|"
echo -e "${PRP}        _ / /   / ___ \| | | (_| (_| | (_| |  __/  | |_| |  _|  _\__ \  __/ |_"
echo -e "${PRP}       (_)_/___/_/   \_\_|  \___\__,_|\__,_|\___|   \___/|_| |_| |___/\___|\__|"
echo -e "${PRP}          |_____|"
echo 
echo -e "${RED}** WARNING: ** ${NC}This script will ${RED} erase ${NC}and install the ${RED}/_Arcade Offset directory${NC} again.
${NC}Ensure to back up your mra files you've ${RED}modified${NC} in this ${RED}directory path${NC} before running."
echo 
echo -e "${NC}Press ctrl-c to exit or any key to continue..."
read -n 1
curl -s --cacert /etc/ssl/certs/cacert.pem --fail --location https://raw.githubusercontent.com/atrac17/Arcade_Offset/main/release/arcade_offset_updater.sh | bash -

exit 0
