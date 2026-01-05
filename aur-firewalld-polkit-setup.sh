#!/bin/bash

##Main Menu Function##
menu () { while true
do
echo "
#########################################
##     Chaotic & PCTLC AUR Set Up      ##
#########################################"
echo "a: Retrieve Key" 
echo "b: Install Chaotic Keyring" 
echo "c: Add Chaotic Repo"
echo "d: Add PCTLC Repo"
echo "e: Enable FirewallD"
echo "f: Enable Polkit Permission for Cosmic"
echo "x: Exit"
read -p "Please Enter Your Choice: " number
##case is inspecting the number selected##Number is a variable##
case $number in
	a) retkey;;
	b) inring;;
	c) addchaoticrepo;;
    d) addpctlcrepo;;
    e) firewalld;;
    f) polkit;;
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
##c:Add Chaotic Repo to /etc/pacman.conf File##
addchaoticrepo() {
sudo tee -a /etc/pacman.conf << 'EOF'

[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist

EOF
echo "Chaotic Repo Added"
sleep 5
clear
}
#
##d:Add PCTLC Repo to /etc/pacman.conf File##
addpctlcrepo() {
sudo tee -a /etc/pacman.conf << 'EOF'

[arch-repo-pctlc]
SigLevel = Never
Server = https://github.com/PCTLC157/arch-repo-pctlc/raw/main/x86_64/

EOF
echo "PCTLC Repo Added"
sleep 5
clear
}
#
##e:Enable FirewallD##
firewalld() {
sudo systemctl enable --now firewalld
#
##f:Polkit Permission Cosmic Desktop##
polkit() {
sudo chmod 7455 /usr/lib/polkit-1/polkit-agent-helper-1
#
##Needed To Run The Main Menu Function##
menu

