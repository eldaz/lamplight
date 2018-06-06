#!/bin/bash

echo Checking status of LAMP stack...

systemctl status apache2
systemctl status mysql 
php -v
mysql --version