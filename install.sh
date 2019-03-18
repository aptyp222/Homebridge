#!/bin/bash

sudo apt-get install samba samba-common-bin -y

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs libavahi-compat-libdnssd-dev
mkdir -m 1777 ~/.homebridge && cp config.json ~/.homebridge

sudo npm i -g --unsafe-perm homebridge homebridge-config-ui-x
sudo apt-get install mc -y
sudo npm install -g homebridge-people 
sudo npm install -g homebridge-raspberrypi-temperature 
sudo npm install -g homebridge-ds18b20
sudo npm install -g homebridge-mi-aqara && sudo npm install -g miio 
sudo npm install -g --unsafe-perm homebridge-gpio-garagedoor 
sudo npm install -g homebridge-ds18b20
sudo npm install -g homebridge-yeelight-wifi 
 
sudo cp homebridge.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable homebridge
sudo systemctl start homebridge

cd /tmp
wget https://lion.drogon.net/wiringpi-2.46-1.deb
sudo dpkg -i wiringpi-2.46-1.deb
sudo usermod -G gpio pi
cd
sudo npm install -g homebridge-gpio-device --unsafe-perm



wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.52.tar.gz
tar zxvf bcm2835-1.52.tar.gz
cd bcm2835-1.52
./configure && make && sudo make check && sudo make install
cd
sudo npm install -g --unsafe-perm homebridge homebridge-pi-thermostat


 
 
