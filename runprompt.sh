#!/usr/bin/env bash
set -x
inputfile="$1"
device="$2"
copyprompt="${inputfile%.txt}.text"
logfile="${inputfile%.txt}.log"
cleanlogfile="${inputfile%.txt}_clean.log"
prompt=$(cat $inputfile | sd '<device>' $device)
opencode run "$prompt" 2>&1 | tee "$logfile"
ansifilter -i $logfile -o $cleanlogfile
cp $inputfile $copyprompt
