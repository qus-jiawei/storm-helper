#!/bin/bash
echo "stoping supervisors"

sh ${STORM_BIN}/supervisors.sh " jps | grep 'backtype.storm.daemon.supervisor'|grep -v grep | awk '{print $1}' | xargs kill"

