#!/bin/bash
# This script will Start Postal as SMTP and Worker Servers Only.
# Created By : Eng. Mohamed Kamal
# Email      : Mr.peacock2@gmail.com
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
wget https://raw.githubusercontent.com/mrkimoz/postal/refs/heads/main/mi-smtp-postal.yml
mv /opt/postal/config/postal.yml /opt/postal/config/postal.yml.original
cp -r mi-smtp-postal.yml postal.yml
mv /opt/postal/install/docker-compose.yml /opt/postal/install/docker-compose.yml.old
cd /opt/postal/install/
wget https://raw.githubusercontent.com/mrkimoz/postal/refs/heads/main/mi-smtp-compose.yml
cp -r mi-smtp-compose.yml docker-compose.yml
postal start
