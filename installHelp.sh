# This script was made for logstalgia

# This code requires macports.
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi


sudo port selfupdate
if [ $? -ne 0 ]
    then
    echo "Looks like MacPort is not installed or is not in your path" 1>&2
    exit 1 
fi

sudo port install libsdl
sudo port install libsdl-devel
sudo port install ftgl
sudo port install libsdl_image

cd /tmp
git clone https://github.com/acaudwell/Logstalgia.git
if [ $? -ne 0 ]; then
    echo "Looks like you dont have git" 1>&2
    exit 1
fi


cd Logstalgia
./configure && make && sudo make install 
