#!/opt/local/bin/perl
#You should sudo port install p5-text-markdown to get the modules necessary to run this script
#Argument 1 is the MDML input file.
#It outputs the markdown-converted-to-html to the console.  Redirect to a file as desired.
use Text::Markdown 'markdown';
open( TEXTFILE, "<$ARGV[ 0 ]" );
print markdown( join( '', <TEXTFILE> ) );
close( TEXTFILE );