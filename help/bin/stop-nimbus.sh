#!/bin/bash

echo "stoping nimbus"

. ${STORM_CONF}/storm-env.sh
nimbus=`storm remoteconfvalue nimbus.host`
nimbus=${nimbus#*nimbus.host:}

ssh -p ${SSH_PORT} $nimbus ". ~/.bash_profile ; ps aux|grep 'backtype.storm.daemon.nimbus'|grep -v grep|awk '{print \$2}'|xargs kill"

