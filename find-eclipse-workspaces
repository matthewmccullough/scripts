#!/bin/sh

#One Approach is to CD to the folder and PWD it
#set -v off
#find . -type d -name .metadata | sed "s/.metadata//" | sed "s/^/pushd \"/" | sed "s/$/\"; echo \$PWD; popd/" | sh

# Hints obtained from:
# http://stackoverflow.com/questions/4935278/concatenate-a-string-to-the-end-of-every-output-line-in-bash-csh

#A second approach is to capture $PWD and replace the ./ in the path with it
find . -type d -name .metadata | sed "s/.metadata//" | sed "s/^\.//" | sed "s/\/$//" | while read line; do echo $PWD$line; done
