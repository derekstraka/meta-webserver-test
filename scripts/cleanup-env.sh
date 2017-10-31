#!/bin/bash -x

# Only attempt to unmount if the directory is already mounted
if mountpoint -q `pwd`/build; then
    sudo umount `pwd`/build
fi

exit 0
