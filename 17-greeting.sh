#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAG:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, Specify the name (mandatory)"
    echo " -w, Specify the wishes. ex, Good morning"
    echo " -h, Display Help and exit"
}

while getopts ":n:w:h" opt; do
    case $opt in
        n) NAME="$OPTARG";; 
        w) WISHES="$OPTARG";;
        h|*) USAGE; exit;;
    esac
done 
