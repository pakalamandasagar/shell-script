#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "ERROR:: Installing is failed"
        exit 1
    else
        echo "Installing is SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROE:: please run this script with root access"
    exit 1 # you can give other than 0
else
    echo "you are root user"
fi # fi means reverse of if, indicating codition end

yum inatall MySQL -y

VALIDATE

yum instal git -y

VALIDATE
