#!/bin/bash

##Main Menu Function##
menu () { while true
do
echo "#################################"
echo "##        ARCHLINUX AUR        ##"
echo "#################################"
echo "#################################"
echo "##       Install Packages      ##"
echo "#################################"
echo ""
echo "*********************************************"
echo "a: Install Trizen (AUR Package Manager)"
echo "*********************************************"
echo "b: Asunder" 
echo "c: Mint Stick" 
echo "d: Pix"
echo "e: RClone Browser"
echo "#################################"
echo "##         AUR Icons           ##"
echo "#################################"
echo "f: DamaDamas"
echo "g: Yaru"
echo "h: Mint Y"
echo "#################################"
echo "##         AUR Themes          ##"
echo "#################################"
echo "i: Yaru Gnome Shell Theme"
echo "j: Yaru GTK Theme"
echo "k: Qogir GTK Theme"
echo "*********"
echo "x: Exit"
echo "*********"
read -p "Please Enter Your Choice: " number
##case is inspecting the number selected##Number is a variable##
case $number in
	a) trizen;;
	b) asunder;;
	c) mintstick;;
	d) pix;;
    e) rcbrowser;;
    f) dama;;
    g) yaru;;
    h) minty;;
    i) yarushell;;
    j) yarugtk;;
    k) qogirgtk;;
	x) exit;;
#
esac
done
}
#
##a:Install Trizen (Archlinux Lightweight AUR Package Manager)##
trizen() {
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si
echo " Trizen Installed"
sleep 5
clear
}
#
##b:Install Asunder (Audio CD Ripper) ##
asunder() {
trizen -S asunder
echo "Asunder Installed"
sleep 5
clear
}
#
##c:Install Mint Stick (Linux Mint USB Image & Format Tool)##
mintstick() {
trizen -S mintstick
echo "Mint Stick Installed"
sleep 5
clear
}
#
##d:Install Pix Photo Viewer (Linux Mint Xapp)##
pix() {
trizen -S pix
echo "Pix Installed"
sleep 5
clear
}
#
##e:Install RClone Browser (GUI for rclone)##
rcbrowser() {
trizen -S rclone-browser
sleep 5
clear
}
#
##f:Install DamaDamas Icons##
dama() {
trizen -S damadamas-icon-theme-git
echo " DamaDamas Icons Installed"
sleep 5
clear
}
#
##g:Install Ubuntu Yaru Icons##
yaru() {
trizen -S yaru-icon-theme
echo " Yaru Icons Installed" 
sleep 5
clear
}
#
##h:Install Mint Y Icons (Linux Mint)##
minty() {
trizen -S mint-y-icons
echo " Mint Y Icons Installed" 
sleep 5
clear
}
#
##i:Install Yaru Gnome Shell Theme##
yarushell() {
trizen -S yaru-gnome-shell-theme
echo " Yaru Gnome Shell Theme Installed" 
sleep 5
clear
}
#
##j:Install Yaru GTK Theme##
yarugtk() {
trizen -S yaru-gtk-theme
echo " Yaru GTK Theme Installed" 
sleep 5
clear
}
#
##k:Install Qogir GTK Theme##
qogirgtk() {
trizen -S qogir-gtk-theme
echo " Qogir GTK Theme Installed" 
sleep 5
clear
}
#
##Needed To Run The Main Menu Function##
menu

