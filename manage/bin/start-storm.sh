#!/bin/bash

${STORM_BIN}/start-nimbus.sh
${STORM_BIN}/start-supervisor.sh
${STORM_BIN}/start-drpc.sh
${STORM_BIN}/start-ui.sh

