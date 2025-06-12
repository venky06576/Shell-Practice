#!/bin/bash

USERID=$(id -u);

if [ USERID -ne 0 ]
then
    echo "ERROR :: Please run the script with root access "
    exit 1
else
    echo "you are running with root accesss"
fi


if [ $? -ne 0 ]
then 
    echo "MYSQL is not installed ... going to install it "
    dnf install mysql -y 
        if [$? -eq 0]
        then 
            echo "Installing Mysql is ... SUCESS"
        else
            echo "Installing MySQl is .....Failure"
            exit 1
        fi
        else
            echo "MYSQL is already installed ... Nothing to do"

fi   
        
