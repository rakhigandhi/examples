#!/bin/sh

# Author : Rakhi Gandhi
# Script follows here:

echo "<---------Initiating Selenium Grid ShutDown--------->"
echo "Shutting down Grid---->"
docker stop selenium-hub
docker rm selenium-hub
echo "Cleaning up the containers---->"
docker stop selenium-node-chrome
docker rm selenium-node-chrome
docker stop selenium-node-firefox
docker rm selenium-node-firefox
docker network rm mygrid