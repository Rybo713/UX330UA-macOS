#!/bin/bash

# Bold / Non-bold
BOLD="\033[1m"
RED="\033[0;31m"
GREEN="\033[0;32m"
BLUE="\033[1;34m"
#echo -e "\033[0;32mCOLOR_GREEN\t\033[1;32mCOLOR_LIGHT_GREEN"
OFF="\033[m"

gatekeeper()
{
	printf "${GREEN}[3rd Party]${OFF}: Enabling ${BOLD}3rd Party${OFF} application support\n"
	sudo spctl --master-disable
    printf "${GREEN}[DONE]${OFF}\n"
}

touchid()
{
	printf "${GREEN}[TouchID]${OFF}: disabling ${BOLD}TouchID${OFF} launch daemons\n"
	sudo rm /System/Library/LaunchDaemons/com.apple.biometrickitd.plist
	sudo rm /System/Library/LaunchDaemons/com.apple.biokitaggdd.plist
    printf "${GREEN}[DONE]${OFF}\n"
}

while true; do

clear
echo ""
printf "${BLUE}${BOLD}      Tools v0.3${OFF}\n"
echo ""
echo "1) Disable GateKeeper"
echo "2) Disable TouchID"
echo "3) Exit"
echo ""
read -p "> " output

if [ $output = 1 ]; then
    clear
    gatekeeper
    echo ""
    echo "(b) Back"
    echo "(q) Exit"
    echo ""
    read -p "> " output1

    if [ $output1 = "b" ]; then
        clear
    elif [ $output1 = "q" ]; then
        clear
        exit 0
    fi

elif [ $output = 2 ]; then
    clear
    touchid
    echo ""
    echo "(b) Back"
    echo "(q) Exit"
    echo ""
    read -p "> " output2

    if [ $output2 = "b" ]; then
        clear
    elif [ $output2 = "q" ]; then
        clear
        exit 0
    fi

elif [ $output = 3 ]; then
    clear
    exit 0
fi

done
