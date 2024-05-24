#!/bin/bash

echo "please enter your username"

read -s USERNAME #the value entered above will be automacically attached to USERNAME variable 

echo "please enter your password"

read -s PASSWORD #the value entered above will be automacically attached to PASSWORD variable

echo "Username is: $USERNAME, Password is: $PASSWORD" # I am printing just for validation, you shoud not print username and passwords in scripts