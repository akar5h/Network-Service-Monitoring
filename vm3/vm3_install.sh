#!/bin/bash

sudo apt-get install curl
sudo apt-get install apache2
sudo apt-get install php
sudo apt-get install php-curl

sudo service apache2 restart


sudo mkdir /var/www/testapp
sudo mkdir /var/www/testapp/html

sudo cp /vm3serv/index.html /var/www/testapp/html/index.html
sudo cp /vm3serv/update.php /var/www/testapp/html/update.php


