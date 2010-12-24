#!/bin/bash

# DESCRIPTION
# Recursively walk through directories looking for names ending in 
# _svn, _git, _gitsvn, or _hg
# Depending on the folder type, issue the correct command to update the
# codebase from its appropriate repository

# OPTIONS
# If DEPTH=1, then search the current level only.
# If DEPTH>1, look in subfolders to depth N

DEPTH=1
find . -depth $DEPTH -type d -regex .*_git -exec gitcdandpull.bsh {} \;
find . -depth $DEPTH -type d -regex .*_gitsvn -exec gitcdandsvnrebase.bsh {} \;
find . -depth $DEPTH -type d -regex .*_hg -exec hgcdandpullandupdate.bsh {} \;
find . -depth $DEPTH -type d -regex .*_svn -exec svncdandupdate.bsh {} \;