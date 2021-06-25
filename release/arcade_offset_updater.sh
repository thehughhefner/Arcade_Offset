#!/bin/bash

echo "Arcade Offset Updater"

echo -n "Grabbing latest Arcade Offset MRAs...."

rm -rf "/media/fat/_Arcade/_Arcade Offset" &&

mkdir -p "/media/fat/_Arcade/_Arcade Offset" &&

cd "/media/fat/_Arcade/_Arcade Offset" &&

curl -s --insecure https://raw.githubusercontent.com/atrac17/Arcade_Offset/main/release/misterfpga_arcade_offset-20200625.txz | tar -Jxf - --no-same-owner --no-same-permissions &&

echo "Complete"