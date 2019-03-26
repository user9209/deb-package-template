#!/bin/bash

# author: Georg Schmidt <gs-develop@gs-sys.de>
# version: 03.2019

## location: /usr/bin/check-for-update-gs-sys-de.sh
# cp check-for-update-gs-sys-de.sh /usr/bin/check-for-update-gs-sys-de.sh
# chmod 0555 /usr/bin/check-for-update-gs-sys-de.sh

update=`apt list --upgradable`

echo "$update"

if [ "$update" != "Auflistung..." ]
then
	zenity --question --timeout 120 --width=150 --height=50 --text "Updates should be installed! Now?" --title "New Updates!"
	case $? in 
	  0) echo "Yes"
	     sudo /usr/sbin/updater
	  ;; 
	  1) echo "No"
	     exit 0
	  ;; 
	  *) echo "Timeout"
	     exit 0
	  ;; 
	esac
else
	echo "no new updates"
	exit 0
fi
