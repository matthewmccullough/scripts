#!/bin/sh
echo Launching Araxis Merge.exe: $1 $2 $3
t1="(from) $3"
t2="(to) $3"
echo araxis-compare -max -nowait -2 -title1:${t1} -title2:${t2} "$1" "$2"
araxis-compare -max -nowait -2 -title1:"${t1}" -title2:"${t2}" "$1" "$2"