#!/bin/bash

#Ensure we have the quantity specified on the CLI
if [ -z "$3" ]; then ARG_ERR=ERR; fi
if [ -z "$2" ]; then ARG_ERR=ERR; fi
if [ -z "$1" ]; then ARG_ERR=ERR; fi
if [ -n "$ARG_ERR" ];
then
    echo "Usage: <filecount> <filenamebase> <filenameextension>"
    exit
fi

count=$1
filenamebase=$2
filenameextension=$3
for (( filenumber = 1; filenumber <= $count ; filenumber++ )); do echo "Some random text: $RANDOM" > $filenamebase$filenumber.$filenameextension; done