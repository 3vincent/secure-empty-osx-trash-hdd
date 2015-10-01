#!/bin/bash

### Secure Empty Trash for OS X v0.1 
### 10/01/2015
### Author: vincent
### Complaints, Comments, Love: vincent@grrlz.net
### !!! This script comes as is. No warranty. If you destroy your computer, valuable data or anything else, I can NOT be held responsible for this. !!!
### This script is free.

trashpath=/Users/$USER/.Trash/

if [ -f /usr/bin/srm -a -d $trashpath ]; then 
	/usr/bin/srm -svrz $trashpath
	mkdir $trashpath
	chmod 700 $trashpath
	osascript -e 'tell app "System Events" to display dialog "The Trashcan is now empty."'

else 
	if [ ! -f /usr/bin/srm ]; then 
	    osascript -e 'tell app "System Events" to display dialog "An Error has occurred: /usr/bin/srm could not be found."'
	fi
	if [ ! -d $trashpath ]; then
	    osascript -e 'tell app "System Events" to display dialog "An Error has occurred: $trashpath could not be found."'
	fi
fi
