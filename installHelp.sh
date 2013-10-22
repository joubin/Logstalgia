# This script was made for logstalgia

# This code requires macports as well as the developer tools that come with xcode.

#login to developer.apple.com and download the commandline tools and install them before running this script


sudo port selfupdate
if [ $? -ne 0 ]
    then
    echo "Looks like MacPort is not installed or is not in your path" 1>&2
    exit 1 
fi
g++ --version
if [ $? -ne 0 ]
    then
    echo "Looks like developer tools are no installed. Go to developer.apple.coma dn install the developer tools and run this script again" 1>&2
    exit 1
fi
set -e
sudo port install libsdl
sudo port install libsdl_image
sudo port install libsdl
sudo port install ftgl
sudo port install pkgconfig
cd /tmp
curl -O http://logstalgia.googlecode.com/files/logstalgia-1.0.3.tar.gz
tar xvzf logstalgia-1.0.3.tar.gz 
cd logstalgia-1.0.3 
./configure && make && sudo make install 

cd /tmp && rm -rf *ogstalgia*
