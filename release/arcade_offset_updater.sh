#!/bin/bash
#written by atrac17

RED='\033[0;31m'
PRP='\033[0;35m'
NC='\033[0m'

echo -e ${NC}
echo -e "${PRP}Arcade Offset ${NC}is updating..."
echo 
echo -e -n "Grabbing latest ${PRP}Arcade Offset ${NC}MRA files..."
echo 
rm -rf "/media/fat/_Arcade/_Arcade Offset" &&
mkdir -p "/media/fat/_Arcade/_Arcade Offset" &&
cd "/media/fat/_Arcade/_Arcade Offset" &&
curl -s --cacert /etc/ssl/certs/cacert.pem https://raw.githubusercontent.com/atrac17/Arcade_Offset/main/release/misterfpga_arcade_offset-20210706.txz | tar -Jxf - --no-same-owner --no-same-permissions &&
echo 
echo -e "${PRP}Update Complete"
echo -e ${NC}

exit 0