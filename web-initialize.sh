#!/bin/bash
# This script will install all the prerequisites for Postal on Ubuntu.
# Created By : Eng. Mohamed Kamal
# Phone      : +201062008120

# Install Postal Helper
postal stop
rm -rf /opt/postal
rm -rf /usr/bin/postal
git clone https://github.com/MissionInbox/postal-install /opt/postal/install
sudo ln -s /opt/postal/install/bin/postal /usr/bin/postal

# Bootstraping Postal
postal bootstrap app.obmengine.com
cd /opt/postal/config/
wget https://raw.githubusercontent.com/MissionInbox/postal-install/refs/heads/ha-postal/web-postal.yml
mv /opt/postal/config/postal.yml /opt/postal/config/postal.yml.original
cp -r web-postal.yml postal.yml
mv /opt/postal/install/docker-compose.yml /opt/postal/install/docker-compose.yml.old
cd /opt/postal/install/
wget https://raw.githubusercontent.com/MissionInbox/postal-install/refs/heads/ha-postal/web-compose.yml
cp -r web-compose.yml docker-compose.yml
postal start
