#!/bin/sh

# Passing the following parameters to mergetool:
#  local base remote merge_result

alocal=$1
base=$2
remote=$3
result=$4

t1="$4 (current branch)"
t2="(common ancestor)"
t3="(to be merged)"

if [ -f $base ]
then
    araxis-compare -max -wait -merge -3 -a2 -title1:"${t1}" -title2:"${t2}" -title3:"${t3}" "$alocal" "$base" "$remote" "$result" 
else
    araxis-compare -max -wait -merge -3 -a2 -title1:"${t1}" -title2:"${t2}" -title3:"${t3}" "$alocal" "$result" "$remote" "$result" 
fi