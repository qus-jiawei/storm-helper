#!/bin/bash
echo "stoping supervisors"
sh ${STORM_BIN}/supervisors.sh " jps | grep supervisor | awk '{print $1}' | xargs kill"
