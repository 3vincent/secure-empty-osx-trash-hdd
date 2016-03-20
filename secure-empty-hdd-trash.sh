#!/bin/bash

### Secure Empty Trash for OS X v0.1 
### 10/01/2015
### Author: vincent
### Complaints, Comments, Love: vincent@grrlz.net
### !!! This script comes as is. No warranty. If you destroy your computer, valuable data or anything else, I can NOT be held responsible for this. !!!
### This script is free.

trashpath=/Users/$USER/.Trash/
srmpath="/usr/bin/srm"

#check if both srm and the desired path of the Trash-Can (typically in user dir) are available
if [ -f $srmpath -a -d $trashpath ]; then 
	#delete trash directory
	$srmpath -svrz $trashpath
	#recreate trash directory
	if [ ! -d $trashpath ]; then
		mkdir $trashpath
		chmod 700 $trashpath
	fi
	osascript -e 'tell app "System Events" to display dialog "The Trashcan is now empty."'

else 
	if [ ! -f $srmpath ]; then 
	    osascript -e 'tell app "System Events" to display dialog "An Error has occurred: $srmpath could not be found."'
	fi
	if [ ! -d $trashpath ]; then
	    osascript -e 'tell app "System Events" to display dialog "An Error has occurred: $trashpath could not be found."'
	fi
fi

### Explanation of srm options 
### Source: $ man srm
### -s --simple	 	only overwrite with a single pass of random data 
### -v --verbose 	explain what is being done
### -r --recursive 	remove the contents of directories recursively
### -z --zero 		after overwriting, zero blocks used by file
