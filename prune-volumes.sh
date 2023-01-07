#!/bin/sh

# Set colors
NC='\033[0m'
LRED='\033[1;31m'
LGREEN='\033[1;32m'
LBLUE='\033[1;34m'

# Set message patterns
INFO="[${LBLUE}ℹ${NC}]"
PASS="[${LGREEN}✔${NC}]"
FAIL="[${LRED}✘${NC}]"

echo "${INFO} Deleting volumes…"
if (sudo rm -rf .volumes/*) 1>&2; then
  echo "${PASS} Deletion completed!"
else
  echo "${FAIL} Deletion failed!"
  exit 1
fi
