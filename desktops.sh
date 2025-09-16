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
echo "-----------------------------------"
echo "g: LXQT"
echo "7: Enable LXQT Display Manager"
echo "######################################"
echo "h: Enable & Disable SystemD Services"
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
    g) lxqt;;
    7) sddm1;;
    h) systemd;;
    x) exit;;
#
esac
done
}
#
##a:Install Cosmic Desktop##
cosmic() {
sudo pacman -S --needed archlinux-appstream-data cosmic-greeter cosmic-session cosmic-files cosmic-store cosmic-terminal cosmic-text-editor cosmic-wallpapers cosmic-player galculator packagekit polkit-gnome polkit-qt6 xdg-desktop-portal-gtk
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
sudo pacman -S --needed accountsservice adwaita-icon-theme adapta-gtk-theme aisleriot archlinux-appstream-data blueman brasero cosmic-store extension-manager file-roller gdm geany ghex gnome gnome-calculator gnome-dictionary gnome-firmware gnome-keyring gnome-photos gnome-shell-extensions gnome-sound-recorder gnome-terminal gnome-tweaks gnumeric gtk-engine-murrine loupe materia-gtk-theme network-manager-applet orchis-theme packagekit papirus-icon-theme pavucontrol polkit-gnome seahorse sysprof text-engine tldr tmux transmission-gtk xdg-desktop-portal-gtk yaru-gnome-shell-theme
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
sudo pacman -S --needed accountsservice adwaita-icon-theme adapta-gtk-theme aisleriot archlinux-appstream-data blueman brasero cinnamon cinnamon-translations cosmic-store file-roller galculator geany gnome-firmware gnome-terminal gnumeric gsound gtk-engine-murrine guvcview light-locker lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings materia-gtk-theme nemo nemo-fileroller nemo-share network-manager-applet orchis-theme packagekit papirus-icon-theme pavucontrol polkit-gnome polkit-qt6 sticky tldr tmux transmission-gtk xdg-desktop-portal-gtk xed xviewer 
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
sudo pacman -S --needed archlinux-appstream-data budgie budgie-extras blueman cosmic-store galculator gnome-terminal light-locker lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings materia-gtk-theme nemo nemo-fileroller nemo-share network-manager-applet orchis-theme papirus-icon-theme packagekit pavucontrol polkit-gnome polkit-qt6 tldr tmux transmission-gtk xdg-desktop-portal-gtk xed
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
sudo pacman -S --needed ark cosmic-store dolphin dolphin-plugins filelight k3b kaddressbook kalk kate kcalc kdeconnect kdegraphics-thumbnailers kdenetwork-filesharing kget kolourpaint konsole kontact korganizer krfb ktorrent okular plasma-meta polkit-qt6 sddm skanlite yakuake 
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
sudo pacman -S --needed blueman cosmic-store galculator labwc lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings network-manager-applet polkit-gnome polkit-qt6 xfce4 xfce4-goodies xarchiver xed
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
#
##g:Install LXQT Desktop##
lxqt() {
sudo pacman -S --needed blueman breeze-icons cosmic-store galculator kate labwc lxqt lxqt-wayland-session nm-tray oxygen-icons sddm
sleep 5
clear
}
#
##7:Enable LXQT Display Manager sddm##
sddm1() {
sudo systemctl enable sddm.service
sleep 5
clear
}
##h:Disable & Enable SystemD Services##
systemd() {
sudo -s <<EOF
systemctl disable dhcpcd.service
systemctl enable haveged.service
systemctl enable bluetooth.service
systemctl enable cups.service
systemctl enable NetworkManager
systemctl enable fstrim.timer
systemctl enable plocate-updatedb.timer
EOF
sleep 5
clear
}
#
##Needed To Run The Main Menu Function##
menu

