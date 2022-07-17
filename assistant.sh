#!/bin/bash 

#this is a small assistant programm

# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
gray='\033[0;90m'
white='\033[1;37m'
# Clear the color after that
clear='\033[0m'
#----------------------------------




echo "
© Created by Mahdiyar
"

echo -e "Hi ${white}$USER${clear}, I'm Liri\a" | boxes -d face

while [ true ]
do

# part that input your command and process it
	echo -ne "
How can I help you 😉

$USER :${blue} "
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
			echo -e "${green}\t\t\t\t --\ Good by! /-- ${clear}"
			exit 0
			;;

		hello | hi)
			echo "Hi, nice to meet you."
			;;
	
		comm | command | com)
			echo -n "Enter the Command : "
			read -a comand 
			echo "$($comand)"
			;;
		        	
		#a part that open IDE
		codeeditor | code | ide)
        	echo -en "
Which editor do you want to open?(enter IDE name without space/ n = no): ${yellow}"

			read IDE
			echo -en "${clear}"
			case $IDE in

				vscode | visualstdio)
					echo "$(code &> /dev/null &)"
					;;
				
				sublim | sublimtext)
					echo "$(subl &> /dev/null &)"
					;;
				
				codeblocks)	
					echo "$(codeblock &> /dev/null &)"
					;;

				vim | vi)
					echo "open menual in the terminal"
 					;;
 				
				emacs)
					echo "You are still using emacs? ಠ‿ಠ " && sleep 1 && echo "$(emacs &> /dev/null &)"
					;;
				n)
					echo "Get away from the front of my eyes."
					;; 
	
				*)
					echo "We dont Support $IDE"
					;;

			esac
			;;
			#end
			

			#open a browser

		browser | url | Browser | BROWSER)
			echo -en "Do you want to open a Browser? (f = firefox, b = brave, c = chrome, n = no): ${yellow}"
			read Browser
			echo -en "${clear}"

			if [[ $Browser == n ]]; then
				Url=""
			else
				echo -en "If you want the open a site enter the url : ${yellow}"
				read Url
				echo -en "${clear}"
			fi

			case $Browser in
	
			f | F)
	  			echo "$(firefox $Url &> /dev/null &)"  	  
	  			;;

			b | B)
	      			echo "$(brave-browser -a $Url &> /dev/null &)"
      				;;

    			c | C)
			    	echo "$(chrome $Url &> /dev/null &)"
      				;;

    			n | N)
      				echo -e "${cyan}are you kidding me (◉_◉)${clear}"
      				;;
	
    			*)
      				echo -e "${cyan}are you kidding me (◉_◉)${clear}"
      				;;
			esac
			;;
			#end browser part



		music | song | spotify)
			echo "On your own system or spotify?(o/s)"
			read location
			if [[ $location == o ]]; then
    				echo "$(dolphin /home/$USER/Music &> /dev/null &)"
			else
    				echo "$(firefox https://www.spotify.com &> /dev/null &)"
			fi
			;;

		vpn | vpn\ on | vpnon)
			echo "$(windscribe-cli connect best)"
			;;

		vpnoff | vpn\ off | vpndown)
			echo "$(windscribe-cli disconnect)"
			;;
                Map | map | location | mylocation)
			echo "$(firefox https://www.google.com/maps &> /dev/null &)"
			;;
		film | movie | video)
			echo -en "Which one? (${cyan}D${clear}isney or ${cyan}N${clear}etflix) : ${cyan}"
			read movie
			echo -en "${clear}"
			if [[ $movie == n ]] | [[ $movie == N ]]; then
				echo "$(firefox https://www.netflix.com &> /dev/null &)"
			else
				echo"$(firefox https://www.disneyplus.com &> /dev/null &)" 
			fi
			;;
		clear)
			echo "$(clear)"
			;;
		amazon | Amazon)
			echo -e "${red}Warning${clear} : You are serving the devil by doing this, it is better to use shops or other online shops"
			sleep 3
			echo "$(firefox https://www.amazon.com &> /dev/null &)"
			;;

		alphabet)
			echo -n {A..Z}
			echo -e "\n"
			echo {a..z}
			;;

		clock | time | date)
			echo -e "${yellow}$(date)${clear}"
			;;

		whoami)
			echo "You are $USER"
			;;

		pwd)
			echo -e "We are in ${yellow}$(pwd)${clear}"
			;;

		ls)
			echo -e "${yellow}$(ls -la)${clear}"
			;;	

		love | iloveyou | i\ love\ you)
			echo -e "Shut up! I have robotfriend ${red}┗(｀o ´)┓${clear}"
			;;

		i\ hate\ you)
			echo -e "${red}me too${clear}"
			;;

		liri | Liri | LIRI)
			echo "I'm here"
			;;
	
		*)
			echo -e "${red}...........Undefined...........${clear}"
				
	esac

	echo -e "\n\n"	

done

exit 0
