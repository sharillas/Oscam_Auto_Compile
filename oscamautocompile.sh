- Build your own Oscam (Ubuntu)

apt-get install cvs subversion autoconf libccid automake libtool gettext make cmake tar bzip2 gzip patch ncurses-bin gcc g++ flex bison pkg-config pcsc-tools pkg-config wget libpcsclite1 libpcsclite-dev libusb-dev libssl-dev libpnglite-dev pngquant zlib1g-dbg zlib1g-dev zlib1g zlibc dialog build-essential mercurial minizip

svn checkout https://svn.streamboard.tv/oscam/trunk oscam-svn

cd oscam-svn
mkdir build
cd build
cmake ..
make
make install
