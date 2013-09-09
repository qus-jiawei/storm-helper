#!/bin/bash

sh ${STORM_BIN}/supervisors.sh " jps | grep work | awk '{print $1}' | xargs kill"
