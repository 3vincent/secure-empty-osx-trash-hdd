# secure-empty-osx-trash-hdd
Secure Empty Trash under OS X for Hard Disk Drives

In OS X 10.11 El Capitan Apple has removed the option to securely empty the trash. 
This script can do this for you – as long as you have a HDD (Hard Disk Drive). 
Solid State Drives are not supported by this, and it is useless to run this script on an SSD.

This comes with no warranty. 
All this script does is 
1) running the unix command srm (secure remove) 
2) to overwrite the content of ~/.Trash/ and the directory itself 
3) and then recreates ~/.Trash/

Have fun erasing stuff
