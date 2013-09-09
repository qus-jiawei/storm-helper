#!/bin/bash

if [ "$STORM_ENV_DEFINE" != "true" ];then
export STORM_ENV_DEFINE="true"

export SSH_PORT=9922

fi;
