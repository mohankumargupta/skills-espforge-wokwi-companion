#!/usr/bin/env bash
set -x
prompt=$(cat $1 | sd '<device>' "$2")

logbasename=$(basename "$prompt" ".txt" )
logname="${logbasename}.log"

opencode run "$prompt" 2>&1 | tee logname


