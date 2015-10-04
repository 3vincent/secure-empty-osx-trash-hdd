# secure-empty-osx-trash-hdd
Secure Empty Trash under OS X for Hard Disk Drives

In OS X 10.11 El Capitan Apple has removed the option to securely empty the trash.   
This script can do this for you – as long as you have a HDD (Hard Disk Drive).   
Solid State Drives are not supported by this, and it is useless to run this script on a SSD.  

This comes with no warranty.   

## 1. What is does

This script is basically a wrapper around the unix command srm. All it does is: 

1) Running the srm command (secure remove)..  
2) to overwrite the content of ~/.Trash/ and the directory itself..  
3) and then recreates ~/.Trash/  

## 2. How to get it

You can download the [latest source code](https://github.com/3vincent/secure-empty-osx-trash-hdd/archive/master.zip), it should be very readable, since it only is beginners bash code. 

Or you can go to the [release page](https://github.com/3vincent/secure-empty-osx-trash-hdd/releases) where you can also download a **"pre-compiled"** version of the script. 

Have fun erasing stuff
