#!/bin/bash

BOLDYELLOW="\e[1;33m"
ENDC="\e[0m"

cd bwapp
sudo docker compose stop
cd ..

cd dvwa
sudo docker compose stop
cd ..

cd juice_shop
sudo docker compose stop
cd ..

cd mutillidae
sudo docker compose stop
cd ..

cd wordpress
sudo docker compose stop
cd ..

echo ""
echo -e "${BOLDYELLOW}All Service Stopped!${ENDC}"
echo ""

