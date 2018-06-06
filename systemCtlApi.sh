#!/bin/bash
#This is the central piece of the application called
#LAMP light

apache2File=~/Projects/scripts/apache2.status
mysqlFile=~/Projects/scripts/mysql.status
apache2Status=unknown
mysqlStatus=unknown

# get the status of the services and output them to files
systemctl status apache2 > apache2File
systemctl status mysql > mysqlFile

# TODO: Check the files exist before grepping
apache2Status=$(grep "Active" apache2File | cut -f2 -d ":" | cut -f2 -d " ")
mysqlStatus=$(grep "Active" mysqlFile | cut -f2 -d ":" | cut -f2 -d " ")

if [ $apache2Status = 'active' ]
then
    echo Apache2  Status: active
elif [ $apache2Status = 'inactive' ]
then
    echo Apache2 Status: inactive
fi

if [ $mysqlStatus = 'active' ]
then
    echo Mysql Status: active
elif [ $mysqlStatus = 'inactive' ]
then
    echo Mysql Status: inactive
fi
