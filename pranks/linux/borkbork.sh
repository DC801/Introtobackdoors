#!/bin/bash
#http://www.commandlinefu.com/commands/view/177/translate-your-terminal-into-swedish-chef
perl -e '$b="bork"; while(<STDIN>){$l=`$_ 2>&1`; $l=~s/[A-Za-z]+/$b/g; print "$l$b\@$b:\$ ";}'
