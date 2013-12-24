#!/bin/bash
echo "starting drpc"
. ${STORM_CONF}/storm-env.sh
sh ${STORM_BIN}/drpcs.sh "storm drpc  >/dev/null 2>&1 &  "
