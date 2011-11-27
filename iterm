#!/bin/sh

#
# Open a new iTerm session with the command given
# as argument.
#
# - If there are no arguments, the new iTerm window will
#   be opened in the current directory, i.e. as if the command
#   would be "cd `pwd`".
# - If the first argument is a directory, the new iTerm will
#   "cd" into that directory before executing the remaining
#   arguments as command.
# - If there are arguments and the first one is not a directory,
#   the new window will be opened in the current directory and
#   then the arguments will be executed as command.
# - The optional, leading "-x" flag will cause the new terminal
#   to be closed immediately after the executed command finishes.
#
# original script by Marc Liyanage <http://www.entropy.ch>
# 	designed to work with Mac OSX Terminal.app
# iTerm modifications by Damon Parker <http://damonparker.org>
# 
#
# Version 1.2
# 9/20/2005 damonp - make sure new session opens in current window, clear screen
# 9/15/2005 damonp - modify for iTerm usage

if [ -z $3 ]; then
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo 'Launch the iTerm application in a certain folder'
echo 'USAGE:'
echo 'iterm <foldertocdto> <nameoftab> <color>'
echo 'iterm ~/Documents/Temp TEMP gray'
echo 'iterm ~/Documents/Temp TEMP white'
echo 'iterm ~/Documents/Temp TEMP blue'
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
exit
fi

if [ "x-x" = x"$1" ]; then
    EXIT="; exit"; shift;
fi

if [[ -d "$1" ]]; then
    WD=`cd "$1"; pwd`; shift;
else
    WD="'`pwd`'";
fi

COMMAND="cd $WD"
TITLE="$1"
COLOR="$2"

echo "Launching iTerm with COMMAND: $COMMAND TITLE: $TITLE COLOR: $COLOR $EXIT"

osascript 2>/dev/null <<EOF
tell application "iTerm"
  activate
  delay 1
  if (the first terminal exists) then
  	set curTerminal to (the first terminal)
	else
		set curTerminal to (make new terminal)
	end if

	tell curTerminal
			set mysession to (make new session at the end of sessions)
			tell mysession
  			exec command "bash -l"
  			-- Do a \r at the end to make the command actually execute
  			write text "$COMMAND\r $EXIT"
  			set name to "$TITLE"
  			set background color to "$COLOR"
  		end tell
	end tell
	
	--set curTerminal to (make new terminal)
end tell
EOF
exit 0
