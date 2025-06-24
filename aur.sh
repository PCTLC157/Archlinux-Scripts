#!/bin/bash

##Main Menu Function##
menu () { while true
do
echo "
#################################
##          AUR Apps           ##
#################################"
echo "a: Asunder" 
echo "b: Mint Stick" 
echo "c: Pix"
echo "d: RClone Browser"
echo "
#################################
##         AUR Icons           ##
#################################"
echo "e: DamaDamas"
echo "f: Yaru"
echo "g: Mint Y"
echo "
#################################
##         AUR Themes          ##
#################################"
echo "h: Yaru Gnome Shell Theme"
echo "i: Yaru GTK Theme"
echo "j: Qogir GTK Theme"
echo "x: Exit"
read -p "Please Enter Your Choice: " number
##case is inspecting the number selected##Number is a variable##
case $number in
	a) asunder;;
	b) mintstick;;
	c) pix;;
    d) rcbrowser;;
    e) dama;;
    f) yaru;;
    g) minty;;
    h) yarushell;;
    i) yarugtk;;
    j) qogirgtk;;
	x) exit;;
#
esac
done
}
#
##a:Install Asunder (Audio CD Ripper) ##
asunder() {
trizen -S asunder
echo "Asunder Installed"
sleep 5
clear
}
#
##b:Install Mint Stick (Linux Mint USB Image & Format Tool)##
mintstick() {
trizen -S mintstick
echo "Mint Stick Installed"
sleep 5
clear
}
#
##c:Install Pix Photo Viewer (Linux Mint Xapp)##
pix() {
trizen -S pix
echo "Pix Installed"
sleep 5
clear
}
#
##d:Install RClone Browser (GUI for rclone)##
rcbrowser() {
trizen -S rclone-browser
sleep 5
clear
}
#
##e:Install DamaDamas Icons##
dama() {
trizen -S damadamas-icon-theme-git
echo " DamaDamas Icons Installed"
sleep 5
clear
}
#
##f:Install Ubuntu Yaru Icons##
yaru() {
trizen -S yaru-icon-theme
echo " Yaru Icons Installed" 
sleep 5
clear
}
#
##g:Install Mint Y Icons (Linux Mint)##
minty() {
trizen -S mint-y-icons
echo " Mint Y Icons Installed" 
sleep 5
clear
}
#
##h:Install Yaru Gnome Shell Theme##
yarushell() {
trizen -S yaru-gnome-shell-theme
echo " Yaru Gnome Shell Theme Installed" 
sleep 5
clear
}
#
##i:Install Yaru GTK Theme##
yarugtk() {
trizen -S yaru-gtk-theme
echo " Yaru GTK Theme Installed" 
sleep 5
clear
}
#
##j:Install Qogir GTK Theme##
qogirgtk() {
trizen -S qogir-gtk-theme
echo " Qogir GTK Theme Installed" 
sleep 5
clear
}
#
##Needed To Run The Main Menu Function##
menu

