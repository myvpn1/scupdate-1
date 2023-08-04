#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
REPO="https://raw.githubusercontent.com/myvpn1/scupdate-1/rizki/"
echo -e " [INFO] Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/myvpn1/scupdate-1/rizki/config/menu.zip" && chmod +x /usr/bin/menu
echo -e " [INFO] Update Successfully"
sleep 2
exit
