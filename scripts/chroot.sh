#!/bin/sh
mount -t proc none 3dsalarm/proc
mount -t sysfs none 3dsalarm/sys
mount -o bind /dev 3dsalarm/dev
chroot 3dsalarm /bin/bash
