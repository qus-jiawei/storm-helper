#!/bin/bash
. ${STORM_CONF}/storm-env.sh

drpcs=`cat ${STORM_CONF}/drpcs`

if [ "$#" != "0" ];then
    for drpc in $drpcs 
    do
        echo "drpc $drpc:"
        ssh -p ${SSH_PORT} $drpc ". ~/.bash_profile ; $@"
    done
fi;


