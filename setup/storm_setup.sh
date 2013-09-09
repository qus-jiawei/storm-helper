#!/bin/bash

mkdir ~/storm_build
cd ~/storm_build

echo "check sudo without passwd. 检查无密码sudo"
sudo hostname
echo "check java version. 检查java版本 1.6"
java -version
echo "check python version. 检查python版本2.6+"
python -V

sleep 5

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

#setup storm
wget https://github.com/downloads/nathanmarz/storm/storm-0.8.1.zip
unzip storm-0.8.1.zip
mv storm-0.8.1 ~/
cd ~/
ln -s storm-0.8.1 storm
