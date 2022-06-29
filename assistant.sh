#!/bin/bash

#this is a small assistant programm

# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
# Clear the color after that
clear='\033[0m'



echo "
© Created by Mahdiyar
"

echo "Hi $USER, I'm Liri" | boxes -d face

while [ true ]
do

# part that input your command and process it
	echo -ne "
How can I help you (Without space😉)

$USER :${magenta} "
	read Want

	echo -e "${clear}"
#end input


#start process and output

	case $Want in
		
		fuck | fuckyou | fuckoff)
			echo -e "F*ck off ${yellow}(♠_♦)${clear}"
			exit 0
			;;

		exit | q | Q)
			echo -e "${green}\t\t\t --\ Good by! /-- ${clear}"
			exit 0
			;;

		hello | hi)
			echo "Hi, nice to meet you."
			;;


		#a part that open IDE
		codeeditor | code | ide)
        	echo -n "
Which editor do you want to open?(enter IDE name without space/ n = no): "

			read IDE

			case $IDE in

				vscode | visualstdio)
					echo "$(code &)"
					;;
				
				sublim | sublimtext)
					echo "$(subl &)"
					;;
				
				codeblocks)	
					echo "$(codeblock &)"
					;;

				vim | vi)
					echo "open menual in the terminal"
 					;;
 				
				emacs)
					echo "You are still using emacs? ಠ‿ಠ " && sleep 1 && echo "$(emacs &)"
					;;
				n)
					echo "Get away from the front of my eyes."
					;; 
	
				*)
					echo "We dont like $IDE"
					;;

			esac
			;;
			#end
			

			#open a browser

		browser | url | Browser | BROWSER)
			echo -n "Do you want to open a Browser? (f = firefox, b = brave, c = chrome, n = no): "
			read Browser

			if [[ $Browser == n ]]; then
				Url=""
			else
				echo -n "If you want the open a site enter the url : "
				read Url
			fi

			case $Browser in
	
			f | F)
	  			echo "$(nohup firefox $Url &)"  	  
	  			;;

			b | B)
      			echo "$(nohup brave-browser -a $Url &)"
      			;;

    		c | C)
		    	echo "$(nohup chrome $Url &)"
      			;;

    		n | N)
      			echo "are you kidding me (◉_◉)"
      			;;

    		*)
      			echo "are you kidding me (◉_◉)"
      			;;
			esac
			;;
			#end browser part



		music | song | spotify)
			echo "On your own system or spotify?(o/s)"
			read location
			if [[ $location == o ]]; then
    			echo "$(dolphin home/$USER/Music)"
			else
    			echo "$(firefox https://www.spotify.com &)"
			fi
			;;


		clear)
			echo -e "${cyan}We are slovenly ¯\(©¿©) /¯ ${clear}"
			;;

		alphabet)
			echo {A..Z}
			echo {a..z}
			;;
		
		love | iloveyou)
			echo -e "Shut up! I have robotfriend ${red}┗(｀o ´)┓${clear}"
			;;
		*)
			echo -e "${red}...........Undefined...........${clear}"
			
	esac

	echo "

	"	

done

exit 0