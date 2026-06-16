#!/usr/bin/env bash
set -x

repomix -o ../archive.md --style markdown --include *.txt,*.md,*.diff
repomix -o ../examples.md --style markdown --include examples/** --ignore **/target/
sed -ri "s/\x1B\[[0-9;]*[a-zA-Z]//g" ../archive.md
