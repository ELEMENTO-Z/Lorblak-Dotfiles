#!/bin/bash

sudo apt-get install manpages-dev build-essential git i3 i3blocks i3lock-fancy rofi compton feh

# installing a theme (too faggot, I know)
#cp themes/blue_ghost_theme/config ~/.config/i3/
#cp -r themes/blue_ghost_theme/.i3 ~/

# changing rofi themes for a usable version
#cp rofi_themes/*.rasi /usr/share/rofi/themes

# installing i3-gaps
# installing dependencies
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake libsnack2-dev libxcb-shape0-dev autoconf libev-dev build-essential git

reboot

# downloading i3-gaps from repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make && sudo make install

# complete actual i3 config (.config/i3/config)

