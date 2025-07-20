#!/bin/bash

##Main Menu Function##
menu () { while true
do
echo "   
#################################
##   ARCHLINUX POST INSTALL    ##
#################################"
echo "a: XORG"
echo "b: General" 
echo "c: Multimedia" 
echo "d: Networking"
echo "e: Fonts"
echo "f: Printing"
echo "g: PCTLC Packages"
echo "h: Google Drive Yad Website"
echo "i: Trizen AUR Package Manager"
echo "j: Download Themes & Backgrounds"
echo "x: Exit"
read -p "Please Enter Your Choice: " number
##case is inspecting the number selected##Number is a variable##
case $number in
	a) xorg;;
	b) general;;
	c) multimedia;;
	d) network;;
    e) fonts;;
    f) print;;
    g) pctlc;;
    h) yadweb;;
    i) trizen;;
    j) themes;;
	x) exit;;
#
esac
done
}
#
##a:Install XORG for Archlinux## ##mesa installed with archlinux## ##xf86-video-vmware was removed from Arch Repos##
xorg() {
sudo pacman -S xclip xf86-input-evdev xf86-input-libinput xf86-input-synaptics xf86-input-vmmouse xf86-input-void xf86-video-amdgpu xf86-video-ati xf86-video-dummy xf86-video-fbdev xf86-video-nouveau xf86-video-qxl xf86-video-vesa xorg-apps xorg-font-util xorg-fonts-75dpi xorg-fonts-100dpi xorg-fonts-encodings xorg-server xorg-server-common xorg-xinit xorg-xwayland xterm
sleep 5
clear
}
#
##b:Install General Packages for Archlinux##
general() {
sudo pacman -S --needed amd-ucode archlinux-contrib aspell aspell-en arch-install-scripts archiso bash-completion bcachefs-tools bind binutils bluez bluez-utils bolt btrfs-progs bzip2 cdrtools cmake cpio cryfs dd_rescue ddrescue devtools diffutils dkms dmidecode dos2unix dvd+rw-tools efitools encfs exfatprogs f2fs-tools fatresize fsarchiver fuse3 fwupd gocryptfs gpart gparted grsync gvfs gvfs-afc gvfs-goa gvfs-gphoto2 grsync gvfs-mtp gvfs-nfs gvfs-smb gzip haveged hdparm hspell htop hunspell hunspell-en_us hwdata hwdetect hwinfo inxi intel-ucode jfsutils keepassxc ldns lha libblockdev libburn libisofs libisoburn logrotate lsb-release lsof lsscsi lz4 lrzip lzip lzop man-db man-pages mdadm mkinitcpio-archiso mkinitcpio-nfs-utils ntfs-3g openssl 7zip pacutils pacman-contrib pahole papirus-icon-theme parted perl perl-data-dump perl-json perl-lwp-protocol-https perl-term-readline-gnu perl-term-ui pkgfile plocate polkit pv python-mutagen python-pycryptodomex python-setuptools python-sphinx python-websockets python-xattr qt5ct rsync s-nail sdparm sdl2 sg3_utils smartmontools squashfs-tools sudo tar testdisk texinfo tlp trizen udftools udisks2 unace unarj unrar unzip upower usbmuxd usbutils vim which xdg-user-dirs xdg-utils xfsprogs xz zip zstd
sleep 5
clear
}
#
##c:Install Multimedia for Archlinux##
multimedia() {
sudo pacman -S --needed alsa-card-profiles alsa-lib alsa-plugins alsa-firmware alsa-utils audacious audacious-plugins cdrdao dvdauthor faac faad2 ffmpeg ffmpegthumbnailer flac frei0r-plugins gstreamer gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugin-pipewire gst-plugins-ugly gstreamer-vaapi imagemagick lame libdvdcss libopenraw mencoder mjpegtools mpv pipewire pipewire-alsa pipewire-audio pipewire-docs pipewire-jack pipewire-pulse pipewire-v4l2 poppler-glib sox smplayer wireplumber x265 x264 xvidcore
sleep 5
clear
}
#
##d:Install Required Network Components for Archlinux##
network() {
sudo pacman -S --needed avahi b43-fwcutter broadcom-wl-dkms dmraid dnsmasq dnsutils ethtool falkon filezilla inetutils iwd net-tools netctl networkmanager networkmanager-openvpn nm-connection-editor nfs-utils nilfs-utils nss-mdns openbsd-netcat openconnect openresolv openssh openssl openvpn samba vsftpd wget wireless-regdb wireless_tools whois wpa_supplicant
sleep 5
clear
}
#
##e:Install Fonts for Archlinux##
fonts() {
sudo pacman -S --needed ttf-ubuntu-font-family ttf-dejavu ttf-bitstream-vera ttf-liberation noto-fonts ttf-roboto ttf-opensans opendesktop-fonts cantarell-fonts freetype2
sleep 5
clear
}
#
##f:Install Printing Support for Archlinux##
print() {
sudo pacman -S --needed cups cups-pdf cups-filters cups-pk-helper foomatic-db foomatic-db-engine ghostscript gsfonts gutenprint python-pillow python-pip python-reportlab simple-scan system-config-printer
sleep 5
clear
}
#
##g:Install PCTLC Packages##
pctlc() {
sudo pacman -S --needed dconf-editor fastfetch firefox flatpak gnome-terminal gufw htop inkscape inxi keepassxc libreoffice-fresh okular pdftk rclone thunderbird viewnior vlc yad yt-dlp asunder damadamas-icon-theme-git mintstick pix rclone-browser yaru-gnome-shell-theme yaru-gtk-theme yaru-icon-theme mint-y-icons
sleep 5
clear
}
#
##h:Open Firefox to Google Drive Yad Folder##
yadweb() {
firefox https://drive.google.com/open?id=1uaBbdycxa8_3ryRKdLJTxWRpo7G4FWRt
sleep 5
clear
}
#
##i:Install Trizen Aarchlinux AUR Package Manager ##
trizen() {
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si
echo " Trizen Installed"
sleep 5
clear
}
#
##j:Download Themes and Backgrounds From Github##
themes() {
cd ~
git clone https://github.com/PCTLC157/Themes.git
cd ~/Themes
tar -xvzf backgrounds.tar.gz
cd ~/Themes/backgrounds
sudo mv *png *jpg /usr/share/backgrounds
cd ~
rm -R Themes
echo " Complete"
sleep 5
clear
}
##Needed To Run The Main Menu Function##
menu

