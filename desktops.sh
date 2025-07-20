#!/bin/bash

##Main Menu Function##
menu () { while true
do
echo "   
#########################################
##         DESKTOPS FOR INSTALL        ##
#########################################"
echo "a: COSMIC"
echo "1: Enable Cosmic Display Manager"
echo "-----------------------------------"
echo "b: GNOME" 
echo "2: Enable Gnome Display Manager"
echo "-----------------------------------"
echo "c: CINNAMON"
echo "3: Enable Cinnamon Display Manager"
echo "-----------------------------------"
echo "d: BUDGIE"
echo "4: Enable Budgie Display Manager"
echo "-----------------------------------"
echo "e: KDE Plasma"
echo "5: Enable Plasma Display Manager"
echo "-----------------------------------"
echo "f: XFCE"
echo "6: Enable XFCE Display Manager"
echo "######################################"
echo "g: Enable & Disable SystemD Services"
echo "######################################"
echo "x: Exit"
read -p "Please Enter Your Choice: " number
##case is inspecting the number selected##Number is a variable##
case $number in
	a) cosmic;;
    1) cosmicgreeter;;
	b) gnome;;
	2) gdm;;
	c) cinnamon;;
    3) lightdm;;
    d) budgie;;
    4) lightdm1;;
    e) kde;;
    5) sddm;;
    f) xfce;;
    6) lightdm2;;
    g) systemd;;
    x) exit;;
#
esac
done
}
#
##a:Install Cosmic Desktop##
cosmic() {
sudo pacman -S --needed cosmic-session cosmic-files cosmic-store cosmic-terminal cosmic-text-editor cosmic-wallpapers cosmic-player polkit-gnome xdg-desktop-portal-gtk archlinux-appstream-data packagekit cosmic-greeter 
sleep 5
clear
}
#
##1:Enable Cosmic Display Manager##
cosmicgreeter() {
sudo systemctl enable cosmic-greeter.service 
sleep 5
clear
}
#
##b:Install Gnome Desktop##
gnome() {
sudo pacman -S --needed accountsservice adwaita-icon-theme adapta-gtk-theme aisleriot blueman archlinux-appstream-data brasero cosmic-store extension-manager file-roller gdm geany ghex gnome gnome-dictionary gnome-firmware gnome-photos gnome-shell-extensions gnome-sound-recorder gnome-tweaks gnumeric gtk-engine-murrine loupe materia-gtk-theme network-manager-applet orchis-theme packagekit papirus-icon-theme pavucontrol polkit-gnome seahorse sysprof text-engine tldr tmux transmission-gtk xdg-desktop-portal-gtk
sleep 5
clear
}
#
##2:Enable Gnome Display Manager gdm##
gdm() {
sudo systemctl enable gdm.service 
sleep 5
clear
}
#
##c:Install Cinnamon Desktop##
cinnamon() {
sudo pacman -S --needed accountsservice adwaita-icon-theme adapta-gtk-theme aisleriot archlinux-appstream-data blueman brasero cinnamon cinnamon-translations cosmic-store file-roller geany gnome-firmware gnumeric gsound gtk-engine-murrine guvcview materia-gtk-theme nemo nemo-fileroller nemo-share orchis-theme network-manager-applet packagekit papirus-icon-theme pavucontrol polkit-gnome sticky tldr tmux transmission-gtk xdg-desktop-portal-gtk xed xviewer light-locker lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sleep 5
clear
}
#
##3:Enable Cinnamon Display Manager lightdm##
lightdm() {
sudo systemctl enable lightdm.service
sleep 5
clear
}
#
##d:Install Budgie Desktop##
budgie() {
sudo pacman -S --needed archlinux-appstream-data budgie budgie-extras blueman cosmic-store materia-gtk-theme nemo nemo-fileroller nemo-share network-manager-applet orchis-theme papirus-icon-theme packagekit pavucontrol polkit-gnome tldr tmux transmission-gtk xdg-desktop-portal-gtk xed light-locker lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sleep 5
clear
}
#
##4:Enable Budgie Display Manager lightdm##
lightdm1() {
sudo systemctl enable lightdm.service
sleep 5
clear
}
#
##e:Install KDE Plasma Desktop##
kde() {
sudo pacman -S --needed plasma-meta ark dolphin dolphin-plugins filelight k3b kaddressbook kalk kate kcalc kdeconnect kdegraphics-thumbnailers kdenetwork-filesharing kget kolourpaint konsole kontact korganizer krfb ktorrent okular partitionmanager sddm skanlite yakuake
sleep 5
clear
}
#
##5:Enable KDE Display Manager sddm##
sddm() {
sudo systemctl enable sddm.service
sleep 5
clear
}
#
##f:Install XFCE Desktop##
xfce() {
sudo pacman -S --needed blueman xfce4 xfce4-goodies lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings 
sleep 5
clear
}
#
##6:Enable XFCE Display Manager lightdm##
lightdm2() {
sudo systemctl enable lightdm.service
sleep 5
clear
}
##g:Disable & Enable SystemD Services##
systemd() {
sudo
systemctl disable dhcpcd.service
systemctl enable haveged.service
systemctl enable bluetooth.service
systemctl enable cups.service
systemctl enable NetworkManager
systemctl enable fstrim.timer
systemctl enable plocate-updatedb.timer
sleep 5
clear
}
#
##Needed To Run The Main Menu Function##
menu

