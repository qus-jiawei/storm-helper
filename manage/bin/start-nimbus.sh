#!/bin/bash

echo "start nimbus"
. ${STORM_CONF}/storm-env.sh
nimbus=`storm remoteconfvalue nimbus.host`
nimbus=${nimbus#*nimbus.host:}
ssh -p ${SSH_PORT} $nimbus ". ~/.bash_profile ; storm nimbus  >/dev/null 2>&1 & "
