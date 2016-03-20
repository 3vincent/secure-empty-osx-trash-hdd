# secure-empty-osx-trash-hdd
Secure Empty Trash under OS X for Hard Disk Drives

In OS X 10.11 El Capitan Apple has removed the option to securely empty the trash.   
This script can do this for you – as long as you have a HDD (Hard Disk Drive).   
Solid State Drives are not supported by this, and it is useless to run this script on a SSD.  

This comes with no warranty.   

You can download the [OS X gui version here](https://github.com/3vincent/secure-empty-osx-trash-hdd/releases).

### 1. What is does

This script is basically a wrapper around the unix command srm. All it does is: 

1. Running the `srm` command (secure remove)  
2. Overwrite the content of `~/.Trash/` and the directory itself  
3. Recreate `~/.Trash/` 

Just run the script in a Terminal Session, or double click the .app.  


### 2. Download source and application

You can download the [latest source code](https://github.com/3vincent/secure-empty-osx-trash-hdd/archive/master.zip), it should be easy to understand, since it is only beginners bash code. 

Or you can go to the [release page](https://github.com/3vincent/secure-empty-osx-trash-hdd/releases) where you can also download a **"pre-compiled"** version of the script. 

***Have fun erasing stuff***


Note
-----

SecureEraseHDDTrash.app will only empty the TrashCan that is located in your local user account. When you want to securely erase the trash of an external drive, you would need to move that file to your desktop and then put it into trash. Which is somehow useless, because the data would leave traces on the external harddrive.  
**Note:** This Program only works for stuff that is and has always been on your local harddrive, the one installed in your Mac.

USE WITH CAUTION!
