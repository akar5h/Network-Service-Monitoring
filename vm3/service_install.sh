#!/bin/bash

sudo cp randn.sh /usr/local/bin/randn.sh 
sudo cp randn.service /etc/systemd/system/randn.service

sudo systemctl daemon-reload

sudo systemctl enable randn

sudo systemctl start randn

