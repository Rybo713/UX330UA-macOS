#!/bin/sh

# Bold / Non-bold
BOLD="\033[1m"
RED="\033[0;31m"
GREEN="\033[0;32m"
BLUE="\033[1;34m"
#echo -e "\033[0;32mCOLOR_GREEN\t\033[1;32mCOLOR_LIGHT_GREEN"
OFF="\033[m"

gatekeeper()
{
	echo "${GREEN}[3rd Party]${OFF}: Enabling ${BOLD}3rd Party${OFF} application support"
	sudo spctl --master-disable
}

touchid()
{
	echo "${GREEN}[TouchID]${OFF}: disabling ${BOLD}TouchID${OFF} launch daemons"
	sudo rm /System/Library/LaunchDaemons/com.apple.biometrickitd.plist
	sudo rm /System/Library/LaunchDaemons/com.apple.biokitaggdd.plist
}

echo ""
echo "Tools v0.1"
echo ""
echo "1) Disable GateKeeper"
echo "2) Disable TouchID"
echo "3) Exit"
echo ""
read -p "> " output

if [ $output = 1 ]; then
    gatekeeper
elif [ $output = 2 ]; then
    touchid
elif [ $output = 3 ]; then
    exit 0
fi

