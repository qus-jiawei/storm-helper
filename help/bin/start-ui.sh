#!/bin/bash
echo "starting ui"
. ${STORM_CONF}/storm-env.sh
nohup ${STORM_BIN}/storm ui >/dev/null 2>&1 &
