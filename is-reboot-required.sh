#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

RUNNING_VERSION=$(uname -r)
FS_VERSION=$(file /boot/vmlinuz-linux | sed -rn 's/.* version ([0-9\.A-Z-]+) .*/\1/p')

if [ ! "${RUNNING_VERSION}" = ${FS_VERSION} ]; then
    echo "Reboot required."
else
    echo "No reboot required."
fi

