#!/bin/bash

sudo apt-get install curl
sudo apt-get install apache2
sudo apt-get install php
sudo apt-get install php-curl

sudo service apache2 restart

unzip vm1.zip

sudo mkdir /var/www/backapp
sudo mkdir /var/www/backapp/html

sudo cp /vm3/index.html /var/www/backapp/html/index.html
sudo cp /vm3/update.php /var/www/backapp/html/update.php


