#!/bin/bash

##Main Menu Function##
menu () { while true
do
echo "
#################################
##     Chaotic AUR Set Up      ##
#################################"
echo "a: Retrieve Key" 
echo "b: Install Chaotic Keyring" 
echo "c: Add Repo"
echo "x: Exit"
read -p "Please Enter Your Choice: " number
##case is inspecting the number selected##Number is a variable##
case $number in
	a) retkey;;
	b) inring;;
	c) addrepo;;
    x) exit;;
#
esac
done
}
#
##a:Retrieve the primary key for Chaotic AUR ##
retkey() {
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
echo "Key Retrieved"
sleep 5
clear
}
#
##b:Install the Chaotic AUR Keyring##
inring() {
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
echo "Keyring Installed"
sleep 5
clear
}
#
##c:Add Repo to /etc/pacman.conf File##
addrepo() {
sudo tee -a /etc/pacman.conf << 'EOF'
[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist
EOF
echo "Repo Added"
sleep 5
clear
}
#
##Needed To Run The Main Menu Function##
menu

