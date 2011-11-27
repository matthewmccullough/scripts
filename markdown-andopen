#!/bin/bash

INPUTFILE="$1"
OUTPUTFILE="$1".html

echo Writing markdown file to \"$OUTPUTFILE\"

markdown.pl "$INPUTFILE" > "$OUTPUTFILE"
open "$OUTPUTFILE"