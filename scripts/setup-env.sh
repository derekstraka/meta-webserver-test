#!/bin/bash -e

mkdir -p build

total_mem=`grep MemTotal /proc/meminfo | awk '{print $2}'`

# Only have the slaves with large amounts of RAM mount the tmpfs
if [ "$total_mem" -ge "268435456" ]; then
    sudo mount -t tmpfs -o size=256G,mode=755,uid=${UID} tmpfs build
fi

exit 0
