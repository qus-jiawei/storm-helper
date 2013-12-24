#!/bin/bash

echo "stoping nimbus"

. ${STORM_CONF}/storm-env.sh
nimbus=`storm remoteconfvalue nimbus.host`
nimbus=${nimbus#*nimbus.host:}
ssh -p ${SSH_PORT} $nimbus ". ~/.bash_profile ; jps | grep nimbus|awk '{print \$1}'|xargs kill"
