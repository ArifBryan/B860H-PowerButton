#!/bin/bash

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

cp powerButton.sh /usr/local/sbin/
cp powerLedOff.sh /usr/local/sbin/

cp powerButton.service /etc/systemd/system/
cp powerLedOff.service /etc/systemd/system/

systemctl enable powerButton.service
systemctl enable powerLedOff.service

systemctl daemon-reload
systemctl start powerButton.service

echo 'Install finished!'
