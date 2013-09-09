#!/bin/bash
echo "stoping ui"
. ${STORM_CONF}/storm-env.sh
jps |grep core |awk '{print $1}' |xargs kill
