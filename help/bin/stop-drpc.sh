#!/bin/bash
echo "stoping drpc"
. ${STORM_CONF}/storm-env.sh

sh ${STORM_BIN}/drpcs.sh ". ~/.bash_profile ;ps aux |grep drpc|awk '{print \$1}'|xargs kill "

