#!/bin/bash

ID=$(id -u)

echo "script name: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 ... FAILED"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROE:: please run this script with root access"
    exit 1 # you can give other than 0
else
    echo "you are root user"
fi # fi means reverse of if, indicating codition end

yum inatall mysql -y

VALIDATE $? "Installing MySQL"

yum install git -y

VALIDATE $? "Installing GIT"

