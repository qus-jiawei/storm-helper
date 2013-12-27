#!/bin/bash
echo "stoping drpc"
. ${STORM_CONF}/storm-env.sh
sh ${STORM_BIN}/drpcs.sh "jps |grep drpc|grep -v grep|awk '{print \$1}'|xargs kill "
