#!/bin/bash

apacheStopped=1
mysqlStopped=1

echo Stopping LAMP stack...

sudo systemctl stop apache2

apacheStopped=$?

if [ $apacheStopped -eq 0 ]
then
    echo Apache2 stopped Successfully
else
    echo An error occured while trying to stop Apache2
fi



sudo systemctl stop mysql 
mysqlStopped=$?

if [ $mysqlStopped -eq 0 ]
then
    echo MySQL Stopped Successfully
else    
    echo An error occured while trying to stop MySQL 
fi

lampStatus.sh