#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

VALIDATE(){

if [ $! eq 0]
then 
    echo -e "Installing $2 is .....$G success $N"
else
     echo -e "Installing $2 is .....$G Failue $N"
     exit 1
fi
}

dnf list installed mysql 

if [ $! -ne 0 ]
then
    echo "MYSQL is not installed .. going to install"
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "Nothing to do mysql ....$Y already installed $N"

fi

dnf list installed python3
if [ $? -ne 0 ]
then
    echo "python3 is not installed... going to install it"
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo -e "Nothing to do python... $Y already installed $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]
then
    echo "nginx is not installed... going to install it"
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "Nothing to do nginx... $Y already installed $N"
fi
   
