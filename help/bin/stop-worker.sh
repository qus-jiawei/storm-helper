#!/bin/bash

sh ${STORM_BIN}/supervisors.sh " jps | grep work | grep -v grep | awk '{print $1}' | xargs kill"
