# secure-empty-osx-trash-hdd
Secure Empty Trash under OS X for Hard Disk Drives

In OS X 10.11 El Capitan Apple has removed the option to securely empty the trash.   
This script can do this for you – as long as you have a HDD (Hard Disk Drive).   
Solid State Drives are not supported by this, and it is useless to run this script on a SSD.  

This comes with no warranty.   

This script is basically a wrapper around the unix command srm. All it does is: 

1) Running the srm command (secure remove)..  
2) to overwrite the content of ~/.Trash/ and the directory itself..  
3) and then recreates ~/.Trash/  


Have fun erasing stuff
