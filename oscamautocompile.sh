#!/bin/bash
# sharillas-script-Auto-Build
sudo -i
apt update
apt install cvs subversion autoconf libccid automake libtool gettext make cmake tar 
apt install bzip2 gzip patch ncurses-bin gcc g++ flex bison pkg-config pkg-config wget 
apt install libusb-dev libssl-dev libpnglite-dev pngquant zlib1g-dbg zlib1g-dev 
apt install zlib1g zlibc dialog build-essential mercurial minizip
apt install libsystemd-dev libudev-dev


# Download and Cross-Compile Oscam last build from SVN Streamboard
svn checkout https://svn.streamboard.tv/oscam/trunk oscam-svn
sleep 3
cd oscam-svn
mkdir build
cd build
cmake ..
make install

# O Novo Oscam Compilado estara localizado em /usr/local/bin
