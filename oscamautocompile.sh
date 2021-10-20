# Build your own Oscam (Ubuntu & Debian)

sudo -i
apt update
apt install -y cvs subversion autoconf libccid automake libtool gettext make cmake tar 
apt install -y bzip2 gzip patch ncurses-bin gcc g++ flex bison pkg-config pcsc-tools pkg-config wget 
apt install -y libpcsclite1 libpcsclite-dev libusb-dev libssl-dev libpnglite-dev pngquant zlib1g-dbg zlib1g-dev 
apt install -y zlib1g zlibc dialog build-essential mercurial minizip
apt install -y libsystemd-dev libudev-dev

# Install PCSC Support
wget https://github.com/sharillas/Oscam_Auto_Compile/raw/main/pcsc-lite-1.9.0.tar.bz2
tar -xf pcsc-lite-1.9.0.tar.bz2
cd pcsc-lite-1.9.0
./configure
make
sudo make install

# Install LIBUSB Support
wget https://github.com/sharillas/Oscam_Auto_Compile/raw/main/libusb-1.0.23.tar.bz2
tar -xf libusb-1.0.23.tar.bz2
cd libusb-1.0.23
./configure
make
sudo make install

# Download and Cross-Compile Oscam last build from SVN Streamboard
svn checkout https://svn.streamboard.tv/oscam/trunk oscam-svn
cd oscam-svn
mkdir build
cd build
cmake ..
# Built target with list_smargo support
make USE_PCSC=1 USE_LIBUSB=1
make install

# O Novo Oscam Compilado estara localizado em /usr/local/bin
