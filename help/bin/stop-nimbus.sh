#!/bin/bash

echo "stoping nimbus"

. ${STORM_CONF}/storm-env.sh
nimbus=`storm remoteconfvalue nimbus.host`
nimbus=${nimbus#*nimbus.host:}
ssh -p ${SSH_PORT} $nimbus ". ~/.bash_profile ; jps | grep nimbus|grep -v grep|awk '{print \$1}'|xargs kill"
