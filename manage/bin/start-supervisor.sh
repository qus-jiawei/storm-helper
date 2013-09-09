#!/bin/bash

echo "starting supervisors"

. ${STORM_CONF}/storm-env.sh

sh ${STORM_BIN}/supervisors.sh "${STORM_BIN}/storm supervisor  >/dev/null 2>&1 & "
