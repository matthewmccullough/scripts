#!/bin/bash

INPUTFILE="$1"
OUTPUTFILE=`echo "$INPUTFILE" | sed "s/\.md/\.html/"`

echo Writing markdown file to \"$OUTPUTFILE\"

markdown.pl "$INPUTFILE" > "$OUTPUTFILE"
