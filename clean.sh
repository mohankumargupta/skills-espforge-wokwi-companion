#!/usr/bin/env bash

#rm -f build.zig chip.zig wokwi_api.zig *.log
#rm -rf dist
fd --exclude justfile --exclude components --exclude "Periph" --exclude "prompt*.txt" --exclude "*.sh" -x rm -rf 

