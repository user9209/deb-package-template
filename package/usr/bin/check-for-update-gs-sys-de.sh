update=`apt list --upgradable`

echo "$update"

if [ "$update" != "Auflistung..." ]
then
	zenity --question --timeout 120 --width=150 --height=50 --text "Updates should be installed! Now?" --title "New Updates!"
	case $? in 
	  0) echo "Yes"
	     sudo updater
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
fi
