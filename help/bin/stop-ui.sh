#!/bin/bash
echo "stoping ui"
. ${STORM_CONF}/storm-env.sh

ps aux |grep 'backtype.storm.ui.core'|grep -v grep |awk '{print \$2}' |xargs kill

