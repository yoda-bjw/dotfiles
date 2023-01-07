#!/bin/bash

## YODAPOP INSTALL APPLICATIONS ##
echo " *** Begin with an up-to-date system ***"
sudo apt update && sudo apt upgrade -y

# Remove LibreOffice:
echo
echo "*** Removing LibreOffice: *** "
echo
sudo apt remove --purge libreoffice* -y
sudo apt clean
sudo apt autoremove -y

# Install from apt repositories:
# Use "apt search <appname>" to find application names.
# Add or remove them here.
echo
echo " *** Installing a list of Deb packages from default apt repoos: *** "
echo
sudo nala install -y stacer gnome-shell-extension-manager code gnome-tweaks keepassxc gparted htop ripgrep flatpak neovim ranger atool caca-utils elinks mediainfo

# Install apps from flatpak repositories (usually Flathub.)
echo
echo " *** Updating flathub repository: *** "
echo
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Look up the proper package names on Flathub before adding them here!
echo
echo " *** Installing a list of flatpak packages: *** "
echo
sudo flatpak install -y com.axosoft.GitKraken in.srev.guiscrcpy io.github.shiftey.Desktop org.onlyoffice.desktopeditors

# Download Pling-Store.appimage and put it in ~/Applications.
echo
echo " *** Downloading the Pling-Store: *** "
echo
cd /home/yoda
mkdir /home/yoda/Applications
cd /home/yoda/Applications
curl -O https://my.opendesktop.org/s/Tbq4BRqpG6PjLYk/download/pling-store-5.0.2-1-x86_64.AppImage
chmod +x pling-store-5.0.2-1-x86_64.AppImage

# Download webapp-manager, put it in ~/Downloads, and install it.
echo
echo " *** Downloading and installing webapp-manager: *** "
echo
cd /home/yoda/Downloads
curl -O http://packages.linuxmint.com/pool/main/w/webapp-manager/webapp-manager_1.2.8_all.deb
sudo nala install ./webapp-manager_1.2.8_all.deb -y

# Download AppImageLauncher, put it in ~/Downloads, and install it
echo
echo " *** Downloading and installing AppImageLauncher: *** "
echo
cd /home/yoda/Downloads
wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
sudo nala install ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb -y

# Install vim-plug (reference: https://github.com/junegunn/vim-plug)
echo
echo " *** Downloading and installing vim-plug for Neovim: *** "
echo
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install Python v3 (pynvim + pip)
echo
echo " *** Upgrading Python v3: *** "
echo
sudo nala install software-properties-common
sudo nala install python3-pip -y

# Install EMACS (Emacs28 is a prerequisite)
# Add/Update repository, then install emacs 28-nativecomp:
echo
echo " *** Adding GNU Emacs repository and installing Emacs28 with nativecomp: *** "
echo
sudo add-apt-repository ppa:kelleyk/emacs
sudo nala update
sudo nala install emacs28-nativecomp -y
	
# Install DOOM-EMACS
echo
echo " *** Installing Doom Emacs over GNU Emacs: *** "
echo
git clone --depth 1 --single-branch https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

# Install Doom Themes
echo
echo " *** Downloading Doom Emacs Themes: *** "
echo
git clone https://github.com/doomemacs/themes.git

echo
echo " *** RESTART to update *** "
