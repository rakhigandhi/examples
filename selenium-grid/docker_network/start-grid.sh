#!/bin/sh

# Author : Rakhi Gandhi
# Script follows here:

echo "<---------Initializing the Selenium Grid Setup--------->"
echo "Setting up Grid Hub----->"
docker network create mygrid
docker run -d -p 4444:4444 --net mygrid --name selenium-hub selenium/hub:3.141.59-20210929
echo "Setting up Grid Nodes----->"
docker run -d --net mygrid -e HUB_HOST=selenium-hub -v /dev/shm:/dev/shm --name selenium-node-chrome selenium/node-chrome-debug
docker run -d --net mygrid -e HUB_HOST=selenium-hub -v /dev/shm:/dev/shm --name selenium-node-firefox selenium/node-firefox-debug