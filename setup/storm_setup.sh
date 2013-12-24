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

#setup storm
if [ ! -d "$HOME/storm" ]
then
    echo "storm 不存在 部署storm"
    wget https://github.com/downloads/nathanmarz/storm/storm-0.8.1.zip
    unzip storm-0.8.1.zip
    mv storm-0.8.1 ~/
    cd ~/
    ln -s storm-0.8.1 storm
    cp $HELP/bin/*  $HOME/storm/bin/
    cp $HELP/conf/* $HOME/storm/conf/
    cp $HELP/storm_profile $HOME/.storm_profile
    echo '
    if [ -f ~/.storm_profile ]; then
      . ~/.storm_profile
    fi' >> $HOME/.bash_profile

fi


