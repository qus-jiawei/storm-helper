#!/bin/bash
echo "stoping supervisors"

sh ${STORM_BIN}/supervisors.sh " ps aux | grep 'backtype.storm.daemon.supervisor'|grep -v grep | awk '{print $2}' | xargs kill"

