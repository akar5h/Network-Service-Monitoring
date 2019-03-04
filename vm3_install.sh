#!/bin/bash

sudo apt-get install curl
sudo apt-get install apache2
sudo apt-get install php
sudo apt-get install php-curl

sudo service apache2 restart

unzip vm3.zip

sudo mkdir /var/www/testapp
sudo mkdir /var/www/testapp/html

sudo cp /vm3/index.html /var/www/testapp/html/index.html
sudo cp /vm3/update.php /var/www/testapp/html/update.php


