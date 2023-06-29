#!/bin/bash

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

systemctl stop powerButton.service

systemctl disable powerButton.service
systemctl disable powerLedOff.service

rm -rf /etc/systemd/system/powerButton.service
rm -rf /etc/systemd/system/powerLedOff.service

rm -rf /usr/local/sbin/powerButton.sh
rm -rf /usr/local/sbin/powerLedOff.sh

systemctl daemon-reload

echo 'Uninstall finished!'
