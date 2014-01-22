#!/bin/bash

sh ${STORM_BIN}/stop-nimbus.sh
sh ${STORM_BIN}/stop-supervisor.sh
sh ${STORM_BIN}/stop-worker.sh
sh ${STORM_BIN}/stop-drpc.sh
sh ${STORM_BIN}/stop-ui.sh

