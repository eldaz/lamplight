#!/bin/bash

apacheStarted=1
mysqlStarted=1

echo Starting up LAMP stack...


sudo systemctl start apache2
apacheStarted=$?

if [ $apacheStarted -eq 0 ]
then
    echo Apache2 started successfully
else
    echo An error occured while trying to start Apache2
fi

sudo systemctl start mysql 
mysqlStarted=$?
if [ $mysqlStarted -eq 0 ]
then
    echo MySQL started successfully
else
    echo An error occured while trying to start MySQL
fi

lampStatus.sh