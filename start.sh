#!/bin/bash

BOLDYELLOW="\e[1;33m"
BOLDGREEN="\e[1;32m"
ENDC="\e[0m"

cd bwapp
sudo docker compose up -d --remove-orphans
cd ..

cd dvwa
sudo docker compose up -d --remove-orphans
cd ..

cd juice_shop
sudo docker compose up -d --remove-orphans
cd ..

cd mutillidae
sudo docker compose up -d --remove-orphans
cd ..

cd wordpress
sudo docker compose up -d --remove-orphans
cd ..

clear

echo ""
echo -e "${BOLDGREEN}http://localhost:9000${ENDC} ${BOLDYELLOW}(Juice Shop)${ENDC}"
echo -e "${BOLDGREEN}http://localhost:9001${ENDC} ${BOLDYELLOW}(DVWA)${ENDC}"
echo -e "${BOLDGREEN}http://localhost:9002${ENDC} ${BOLDYELLOW}(bWAPP)${ENDC}"
echo -e "${BOLDGREEN}http://localhost:9003${ENDC} ${BOLDYELLOW}(Mutillidae)${ENDC}"
echo -e "${BOLDGREEN}http://localhost:9004${ENDC} ${BOLDYELLOW}(Wordpress)${ENDC}"
echo ""
