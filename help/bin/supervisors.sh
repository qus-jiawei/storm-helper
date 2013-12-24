#!/bin/bash
. ${STORM_CONF}/storm-env.sh

supervisors=`cat ${STORM_CONF}/supervisors`

if [ "$#" != "0" ];then
    for supervisor in $supervisors 
    do
        echo "$supervisor:"
        ssh -p ${SSH_PORT} $supervisor ". ~/.bash_profile ; $@"
    done
fi;


