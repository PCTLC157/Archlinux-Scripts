#!/bin/bash

##Main Menu Function##
menu () { while true
do
echo "   
#################################
##   ARCHLINUX POST INSTALL    ##
#################################"
echo "a: XORG"
echo "b: All Arch Base Packages" 
echo "c: Retrieve Chaotic Key"
echo "d: Install Chaotic Keyring"
echo "e: Add Chaotic Repo"
echo "f: Add PCTLC Repo"
echo "g: Install PCTLC Packages"
echo "h: Google Drive Yad Website"
echo "i: Install Trizen AUR Package Manager"
echo "j: Download Themes & Backgrounds"
echo "k: Enable FirewallD"
echo "l: Add Arch Repo For Artix"
echo "x: Exit"
read -p "Please Enter Your Choice: " number
##case is inspecting the number selected##Number is a variable##
case $number in
	a) xorg;;
	b) allpkgs;;
    c) retkey;;
    d) inring;;
    e) addchaoticrepo;;
    f) addpctlcrepo;;
	g) pctlc;;
    h) yadweb;;
    i) trizen;;
    j) themes;;
    k) firewalld;;
    l) archrepoartix;;
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
##b:Install All Packages for Archlinux General, Multimedia, Network, Fonts and Printing##
allpkgs() {
sudo pacman -S --needed amd-ucode archlinux-contrib aspell aspell-en arch-install-scripts archiso bash-completion bcachefs-tools bind bluez bluez-utils bolt btrfs-progs cdrtools cmake cpio cryfs dd_rescue ddrescue devtools dkms dmidecode dos2unix dvd+rw-tools efitools encfs exfatprogs f2fs-tools fastfetch fatresize fsarchiver fuse3 fwupd gocryptfs gpart gparted grsync gvfs gvfs-afc gvfs-goa gvfs-gphoto2 grsync gvfs-mtp gvfs-nfs gvfs-smb haveged hdparm hspell htop hunspell hunspell-en_us hwdetect hwinfo inxi jfsutils ldns lha libblockdev libburn libisofs libisoburn logrotate lsb-release lsof lsscsi lrzip lzip lzop man-db man-pages mdadm mkinitcpio-archiso mkinitcpio-nfs-utils ntfs-3g 7zip pacutils pacman-contrib pahole papirus-icon-theme parted perl-data-dump perl-json perl-lwp-protocol-https perl-term-readline-gnu perl-term-ui pkgfile plocate pv python-mutagen python-pycryptodomex python-setuptools python-sphinx python-websockets python-xattr qt5ct rsync s-nail sdparm sdl2 sg3_utils smartmontools squashfs-tools testdisk texinfo tlp udftools udisks2 unace unarj unrar unzip upower usbmuxd usbutils vim which xdg-user-dirs xdg-utils xfsprogs zip alsa-card-profiles alsa-lib alsa-plugins alsa-firmware alsa-utils audacious audacious-plugins cdrdao dvdauthor faac faad2 ffmpeg ffmpegthumbnailer flac frei0r-plugins gstreamer gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugin-pipewire gst-plugins-ugly imagemagick lame libdvdcss libopenraw mencoder mjpegtools mpv nano pipewire pipewire-alsa pipewire-audio pipewire-docs pipewire-jack pipewire-pulse pipewire-v4l2 poppler-glib sox smplayer wireplumber x265 x264 xvidcore avahi b43-fwcutter broadcom-wl-dkms dmraid dnsmasq dnsutils ethtool falkon filezilla inetutils iwd net-tools netctl networkmanager-openvpn nm-connection-editor nfs-utils nilfs-utils nss-mdns openbsd-netcat openconnect openresolv openssh openvpn samba vsftpd wget wireless-regdb wireless_tools whois ttf-ubuntu-font-family ttf-dejavu ttf-bitstream-vera ttf-liberation noto-fonts ttf-roboto ttf-opensans opendesktop-fonts cantarell-fonts freetype2 cups cups-pdf cups-filters cups-pk-helper foomatic-db foomatic-db-engine ghostscript gsfonts gutenprint python-pillow python-pip python-reportlab simple-scan system-config-printer
#Multimedia
#alsa-card-profiles alsa-lib alsa-plugins alsa-firmware alsa-utils audacious audacious-plugins cdrdao dvdauthor faac faad2 ffmpeg ffmpegthumbnailer flac frei0r-plugins gstreamer gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugin-pipewire gst-plugins-ugly gstreamer-vaapi imagemagick lame libdvdcss libopenraw mencoder mjpegtools mpv pipewire pipewire-alsa pipewire-audio pipewire-docs pipewire-jack pipewire-pulse pipewire-v4l2 poppler-glib sox smplayer wireplumber x265 x264 xvidcore
#Network
#avahi b43-fwcutter broadcom-wl-dkms dmraid dnsmasq dnsutils ethtool falkon filezilla inetutils iwd net-tools netctl networkmanager networkmanager-openvpn nm-connection-editor nfs-utils nilfs-utils nss-mdns openbsd-netcat openconnect openresolv openssh openssl openvpn samba vsftpd wget wireless-regdb wireless_tools whois wpa_supplicant
#Fonts
#ttf-ubuntu-font-family ttf-dejavu ttf-bitstream-vera ttf-liberation noto-fonts ttf-roboto ttf-opensans opendesktop-fonts cantarell-fonts freetype2
#Printing
#cups cups-pdf cups-filters cups-pk-helper foomatic-db foomatic-db-engine ghostscript gsfonts gutenprint python-pillow python-pip python-reportlab simple-scan system-config-printer
sleep 5
clear
}
#
##c:Retrieve the primary key for Chaotic AUR ##
retkey() {
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
echo "Key Retrieved"
sleep 5
clear
}
#
##d:Install the Chaotic AUR Keyring##
inring() {
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
echo "Keyring Installed"
sleep 5
clear
}
#
##e:Add Chaotic Repo to /etc/pacman.conf File##
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
##f:Add PCTLC Repo to /etc/pacman.conf File##
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
##g:Install PCTLC Packages## #Replaced gufw with firewalld wayland issue#
pctlc() {
sudo pacman -S --needed dconf-editor easytag firefox firewalld flatpak gnome-disk-utility gnome-terminal inkscape keepassxc libreoffice-fresh mintstick mint-y-icons okular pdftk pix rclone rclone-browser rsgain shotwell thunderbird vlc vlc-plugins-all webapp-manager yad yt-dlp yaru-gtk-theme yaru-icon-theme
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
sudo mkdir -p /usr/share/backgrounds
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
#
##k:Enable FirewallD##
firewalld() {
sudo systemctl enable --now firewalld
}
#
##e:Add Arch Repo to Artix pacman.conf file not included by default##
archrepoartix() {
sudo tee -a /etc/pacman.conf << 'EOF'

[extra]
Include = /etc/pacman.d/mirrorlist-arch

EOF
echo "extra Repo added to pacman.conf file"
sleep 5
clear
}
#
##Needed To Run The Main Menu Function##
menu

