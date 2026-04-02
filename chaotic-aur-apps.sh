#!/bin/bash

##Main Menu Function##
menu () { while true
do
echo "
#################################
##          AUR Apps           ##
#################################"
echo "a: Asunder (Trizen or Flatpak)" 
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
echo "h: Yaru Gnome Shell Theme (Gnome Only)"
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
sudo pacman -S asunder
echo "Asunder Installed"
sleep 5
clear
}
#
##b:Install Mint Stick (Linux Mint USB Image & Format Tool)##
mintstick() {
sudo pacman -S mintstick
echo "Mint Stick Installed"
sleep 5
clear
}
#
##c:Install Pix Photo Viewer (Linux Mint Xapp)##
pix() {
sudo pacman -S pix
echo "Pix Installed"
sleep 5
clear
}
#
##d:Install RClone Browser (GUI for rclone)##
rcbrowser() {
sudo pacman -S rclone-browser
sleep 5
clear
}
#
##e:Install DamaDamas Icons##
dama() {
sudo pacman -S damadamas-icon-theme-git
echo " DamaDamas Icons Installed"
sleep 5
clear
}
#
##f:Install Ubuntu Yaru Icons##
yaru() {
sudo pacman -S yaru-icon-theme
echo " Yaru Icons Installed" 
sleep 5
clear
}
#
##g:Install Mint Y Icons (Linux Mint)##
minty() {
sudo pacman -S mint-y-icons
echo " Mint Y Icons Installed" 
sleep 5
clear
}
#
##h:Install Yaru Gnome Shell Theme (Gnome Desktop Only)##
yarushell() {
sudo pacman -S yaru-gnome-shell-theme
echo " Yaru Gnome Shell Theme Installed" 
sleep 5
clear
}
#
##i:Install Yaru GTK Theme##
yarugtk() {
sudo pacman -S yaru-gtk-theme
echo " Yaru GTK Theme Installed" 
sleep 5
clear
}
#
##j:Install Qogir GTK Theme##
qogirgtk() {
sudo pacman -S qogir-gtk-theme-git
echo " Qogir GTK Theme Installed" 
sleep 5
clear
}
#
##Needed To Run The Main Menu Function##
menu

