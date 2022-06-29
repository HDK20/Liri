#!/bin/bash

case $USER in 
    root)
    	echo "$(mkdir /usr/bin/LiriMain)"
  		echo "$(cp ~/assistant.sh /usr/bin/LiriMain)"
  		echo -e "export Liri=/usr/bin/LiriMain/assistant.sh" >> /root/.bashrc
  		echo -e "alias liri="$Liri"" >> /root/.bashrc
  		echo -e "$(source /root/.bashrc)"
  		echo -e "$(source /root/.bashrc)"
  		;;
  	*)
			echo "$(mkdir /home/$USER/LiriMain)"
  			echo "$(cp ~/assistant.sh /home/$USER/LiriMain)"
  			echo -e "export Liri=/home/$USER/LiriMain/assistant.sh" >> /home/$USER/.bashrc
  			echo -e "alias liri="$Liri"" >> /home/$USER/.bashrc
  			echo -e "$(source /home/$USER/.bashrc)"
		    echo -e "$(source /home/$USER/.bashrc)"
		    ;;
esac
  



