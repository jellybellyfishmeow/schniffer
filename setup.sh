# Get Updates
sudo apt-get update && apt-get upgrade
sudo apt-get dist-upgrade

# Get Raspi-config onto Kali Linux
sudo apt-get update
sudo apt-get install lua5.1 alsa-utils triggerhappy curl libcurl3
wget http://archive.raspberrypi.org/debian/pool/main/r/raspi-config/raspi-config_20160322_all.deb
wget http://archive.raspberrypi.org/debian/pool/main/r/rpi-update/rpi-update_20140705_all.deb
dpkg -i raspi-config_20160322_all.deb
dpkg -i rpi-update_20140705_all.deb

# Expand filesystem
raspi-config
# Navigate to 'Advanced Settings', then hit enter on Expand Filesystem

# Enable SSH
sudo apt-get install ssh-server

# Change password
echo hello, please set your password
passwd
#<new password>

# Set hostname to Schniffer
/etc/hostname

# Make directory for output information
cd root
mkdir output

# Install speedtest-cli
sudo apt-get install pip
pip install speedtest-cli

# Install nmap
sudo apt-get install nmap

# Install Apache2
sudo apt-get install apache2
/etc/init.d/apache2 start
update-rc.d apache2 enable

# Install PHP
sudo apt-get install php libapache2-mod-php -y

# Install OpenVAS
sudo apt-get install lsof
sudo apt-get install psmisc
sudo apt-get install openvas

# Setup OpenVAS
openvas-setup
##TODO: Set openvas to run on start

#Install Bro IDS
sudo apt-get install cmake make gcc g++ flex bison libpcap-dev libssl1.0-dev python-dev swig zlib1g-dev
git clone --recursive git://git.bro.org/bro
cd bro
./configure
make
make install

# Add new unprivileged user
adduser --home /default default
default
default




