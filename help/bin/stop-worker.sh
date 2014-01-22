#!/bin/bash

sh ${STORM_BIN}/supervisors.sh " ps aux | grep 'backtype.storm.daemon.worker'|grep -v grep | awk '{print \$2}' | xargs kill"

