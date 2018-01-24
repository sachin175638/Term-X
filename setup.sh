#!/bin/bash
cd $HOME
pkg install ncurses-utils -y
apt-get install python2 -y
apt-get install figlet -y
git clone https://github.com/sqlmapproject/sqlmap.git
git clone https://github.com/joepie91/python-whois
cd python-whois
chmod +x setup.py
python2 setup.py install
cd $HOME
apt-get install lynx -y
cd Term-X
chmod +x turrmux.sh
echo "run sh turmux.sh "

