#!/bin/bash -x

sudo -u homebridge cd /var/homebridge && rm -rf  accessories persist && cd -
sudo systemctl restart homebridge &
sudo journalctl -f -u homebridge
