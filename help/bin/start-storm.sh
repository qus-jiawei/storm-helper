#!/bin/bash

sh ${STORM_BIN}/start-nimbus.sh
sh ${STORM_BIN}/start-supervisor.sh
sh ${STORM_BIN}/start-drpc.sh
sh ${STORM_BIN}/start-ui.sh

