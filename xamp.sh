#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[0;32m'
echo "┌─Hello Can I help You?"
printf "${RED}└──╼${NC}Enter 1: to Start\n"
printf "${RED}└──╼${NC}Enter 0: to Stop xamp\n"
printf "${RED}└──╼${NC}Enter 2: to show help\n"
printf "${RED}└──╼${NC}Enter 3: open localhost in firefox\n"
printf "${RED}└──╼${NC}Enter 6: programmer\n"
printf "${RED}└──╼${NC}Enter 9: clear \n"
printf "${RED}└──╼${NC}for quite Enter any other number :)\n"

while true;
do
echo -n "Enter: "
read VAR

if [[ $VAR -eq 2 ]]
then
  printf "┌─USER MANUAL:\n"
  printf "${RED}└──╼${NC}if you want to start xamp Enter 1\n"
  printf "${RED}└──╼${NC}if you want to stop xamp Enter 0\n"
  printf "${RED}└──╼${NC}if you want to help xamp Enter 2\n"
  printf "${RED}└──╼${NC}for quite Enter any other number :)\n"
 
elif [[ $VAR -eq 1 ]]
then
  printf "${GREEN}Starting Xamp...${NC}\n"
  #printf "${GREEN}Please Enter sudo User Password${NC}:\n"
  sudo /opt/lampp/lampp start
  
elif [[ $VAR -eq 0 ]]
then
  printf "${RED}Stoping Xamp...${NC}\n"
  #printf "${RED}Please Enter sudo User Password:${NC}\n"
  sudo /opt/lampp/lampp stop
elif [[ $VAR -eq 3 ]]
then
  /usr/bin/firefox --new-window localhost

elif [[ $VAR -eq 6 ]]
then
  echo "  ┌─lionprogrammer:"
  printf "  ${RED}└──╼${NC}t.me/lionprogrammer\n"
  printf "  ${RED}└──╼${NC}instagram.com/lionprogrammer\n"
  printf "  ${RED}└──╼${NC}github.com/lionprogram\n"
elif [[ $VAR -eq 9 ]]
then
  clear
  echo "┌─Can I help You?"
	printf "${RED}└──╼${NC}Enter 1: to Start\n"
	printf "${RED}└──╼${NC}Enter 0: to Stop xamp\n"
	printf "${RED}└──╼${NC}Enter 2: to show help\n"
	printf "${RED}└──╼${NC}Enter 3: open localhost in firefox\n"
	printf "${RED}└──╼${NC}Enter 6: programmer\n"
	printf "${RED}└──╼${NC}Enter 9: clear \n"
else

  printf "Good By :)\n"
  break;
fi

done
