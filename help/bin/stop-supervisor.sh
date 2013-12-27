#!/bin/bash
echo "stoping supervisors"
sh ${STORM_BIN}/supervisors.sh " jps | grep supervisor |grep -v grep| awk '{print $1}' | xargs kill"
