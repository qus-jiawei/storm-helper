#!/bin/bash

SETUP=$(cd $(dirname $0);pwd)
ROOT=$(dirname $SETUP);
BUILD=$ROOT/storm_build
HELP=$ROOT/help

echo "check sudo without passwd. 检查无密码sudo"
sudo hostname
echo "check java version. 检查java版本 1.6"
java -version
if [ "1$JAVA_HOME" == "1" ]
then
    echo "$JAVA_HOME is not set"
    exit
fi
echo "check python version. 检查python版本2.6+"
python -V

sleep 5

mkdir $BUILD
cd $BUILD

#setup ZMQ
#ZMQ depan
sudo yum -y install e2fsprogs-devel
sudo yum -y install libuuid-devel.x86_64
cd ~/storm_build
wget http://download.zeromq.org/zeromq-2.1.7.tar.gz
tar -xzf zeromq-2.1.7.tar.gz
cd zeromq-2.1.7
./configure
make
sudo make install

#setup JZMQ
cd ~/storm_build
git clone https://github.com/nathanmarz/jzmq.git
cd jzmq
./autogen.sh
./configure
make
sudo make install


