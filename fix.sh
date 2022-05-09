#!/bin/bash

clear
RED='\e[1;91m'
BLUE='\033[0;34m'
BRED='\033[1;31m' 
PURPLE='\033[0;35m'
WHITE='\033[0;37m'
BCYAN='\033[1;36m'
YELLOW='\033[0;33m'
BWHITE='\033[1;37m'
RESET='\033[0m'
VER='1'
user=$(whoami)
date=$(date "+%D Time: %I:%M %p")

# Banner
banner(){
cat<<"EOF"
         _nnnn_                      
        dGGGGMMb     ,"""""""""""""""""""""""""""""""""""""".
       @p~qp~~qMb    |             Fix VirtualBox           |
       M|@||@) M|   _;......................................'
       @,----.JM| -'
      JS^\__/  qKL
     dZP        qKRb
    dZP          qKKb
   fZP            SMMb
   HZM            MMMM
   FqM            MMMM
 __| ".        |\dS"qML
 |    `.       | `' \Zq
_)      \.___.,|     .'
\____   )MMMMMM|   .'
     `-'       `--' dogukaN
EOF
echo ""
echo -e "${YELLOW}+ -- --=[Date: $date"
echo -e "${RED}+ -- --=[Welcome $user :)"
echo -e "${BLUE}+ -- --=[Fix-Left Half Portion Error v$VER by @dogukankurnaz"
echo -e "${PURPLE}+ -- --=[https://github.com/dogukankurnaz"
echo -e "${RESET}"
}
banner

$(kill -15 $(ps aux | grep "VBoxClient --draganddrop" | grep "Sl" | awk '{print $2;}')) | $(/usr/bin/VBoxClient --draganddrop) | $(/usr/bin/VBoxClient --clipboard)

sleep 2
echo -e "${BWHITE}Status = Successfully Completed."
