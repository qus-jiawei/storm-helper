#!/bin/bash
echo "stoping ui"
. ${STORM_CONF}/storm-env.sh
jps |grep core|grep -v grep |awk '{print $1}' |xargs kill
