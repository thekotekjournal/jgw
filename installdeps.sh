# !IMPORTANT
# This file for Linux in (Debian Or Ubuntu)

# color in compile
GREEN="\033[0;32m" # color green
RED="\033[0;31m" # color red
NC="\033[0m" # color reset

# check dependencis
if [ -d "/usr/include/SDL2/" ] 
then
    # if dependencis for linux user it's already.
    printf "${GREEN} Dependencis already${NC}\n"
else
    # check connection of user
    wget -q --tries=10 --timeout=20 --spider http://google.com
    if [[ $? -eq 0 ]]; then  
        sudo apt install libsdl2-dev -y # installing automatically lib dependencis
    else
        printf "${RED}Please Using: ${GREEN}Internet${NC}\n" # If user not using connection in user computer.
        exit 1
    fi
fi

# settings all variable in this
COMPILE="g++" # default compile: g++, support for clang (clang+)

# check compiler
if [ -d "/usr/bin/$COMPILE" ] 
then
  printf "Compiler: ${GREEN}${COMPILER}${NC} It's Exist\n"
else
  # check connection of user
  wget -q --tries=10 --timeout=20 --spider http://google.com
  if [[ $? -eq 0 ]]; then  
      sudo apt install g++ gcc -y # installing automatically lib dependencis
  else
      printf "${RED}Please Using: ${GREEN}Internet${NC}\n" # If user not using connection in user computer.
      exit 1
  fi
fi
