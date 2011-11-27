#!/bin/bash

if [ -n "$4" ]; then ARG_ERR=ERR; fi
if [ -z "$3" ]; then ARG_ERR=ERR; fi
if [ -z "$2" ]; then ARG_ERR=ERR; fi
if [ -z "$1" ]; then ARG_ERR=ERR; fi
if [ -n "$ARG_ERR" ];
then
    echo "Usage: <filename pattern> <original word> <replacement word>"
    exit
fi
for i in $1; do j=`echo $i | sed 's/$2/$3/g'`; mv "$i" "$j"; done