#!/bin/bash

${STORM_BIN}/stop-nimbus.sh
${STORM_BIN}/stop-supervisor.sh
${STORM_BIN}/stop-worker.sh
${STORM_BIN}/stop-drpc.sh
${STORM_BIN}/stop-ui.sh

