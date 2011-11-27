#!/bin/sh
 
#Example Usage: findjars com/ambientideas/groovy
 
CLASSNAMETOFIND="$1"
 
echo "Searching all JARs recursively..."
for eachjar in `find . -iname "*.jar"`
do
  #echo "Searching in $eachjar ..."
  jar tvf $eachjar | grep $CLASSNAMETOFIND > /dev/null
  if [ $? == 0 ]
  then
    echo "******* Located \"$CLASSNAMETOFIND\" in $eachjar *******"
  fi
done