#!/bin/bash

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs libavahi-compat-libdnssd-dev
mkdir ~/.homebridge && cp config.json ~/.homebridge

sudo npm i -g --unsafe-perm homebridge homebridge-config-ui-x
sudo apt-get install mc -y
sudo npm install -g homebridge-people 
sudo npm install -g homebridge-raspberrypi-temperature 
 
sudo cp homebridge.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable homebridge
sudo systemctl start homebridge
