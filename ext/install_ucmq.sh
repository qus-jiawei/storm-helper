#!/bin/bash
cd $HOME
mkdir $HOME/ucmq_temp
cd $HOME/ucmq_temp

#libevent 2.0.21
wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
tar -zxvf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
LIBEVENT_DIR="$HOME/libevent/"
./configure --prefix=$HOME/libevent/
make
make install

#ucmq
cd $HOME/ucmq_temp
git clone https://github.com/ucweb/ucmq
cd ucmq
sh genall.sh
./configure --with-libevent=LIBEVENT_DIR --prefix=$HOME/ucmq
make && make install

#rm -rf $HOME/ucmq_temp

