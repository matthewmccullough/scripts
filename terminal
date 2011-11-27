#!/bin/bash
if [ -z $1 ]; then
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo 'Launch a terminal window tab and CD to the specified location'
echo 'USAGE:'
echo 'terminal.sh <desiredpath>'
echo 'Param1 = path to CD to'
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
exit
fi

#=================================================
# bash - find path to currently running script
# which is necessary because we need to find our
# adjacent terminal.scpt file
#=================================================
abspath="$(cd "${0%/*}" 2>/dev/null; echo "$PWD"/"${0##*/}")"
# to get the path only - not the script name - add
path_only=`dirname "$abspath"`

#Pass in the folder you want to CD to
echo Opening a terminal tab to \'$1\'
osascript "$path_only/terminal.scpt" "$1"