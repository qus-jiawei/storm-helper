#!/bin/bash

SETUP=$(cd $(dirname $0);pwd)
ROOT=$(dirname $SETUP);
BUILD=$ROOT/storm_build
HELP=$ROOT/help

cd ~/

#setup storm
if [ ! -d "$HOME/storm" ]
then
    echo "storm 不存在 部署storm"
    #wget https://github.com/downloads/nathanmarz/storm/storm-0.8.1.zip
    #wget https://dl.dropboxusercontent.com/s/dj86w8ojecgsam7/storm-0.9.0.1.zip
    NAME=storm-0.9.0.1
    unzip ${NAME}.zip
    ln -s ${NAME} storm
    cp $HELP/bin/*  $HOME/storm/bin/
    cp $HELP/conf/* $HOME/storm/conf/
    cp $HELP/storm_profile $HOME/.storm_profile
    echo '
    if [ -f ~/.storm_profile ]; then
      . ~/.storm_profile
    fi' >> $HOME/.bash_profile

fi


