#!/bin/sh
#Container/OS: http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-latest.tar.gz  (see also https://archlinuxarm.org/platforms/armv6/raspberry-pi)
#Packages needed: arch-install-scripts
cd /tmp
mkdir 3dsalarm
pacstrap /tmp/3dsalarm/ util-linux bash bzip2 coreutils file filesystem findutils gawk gcc-libs gettext glibc grep gzip iproute2 iputils pacman procps-ng psmisc sed shadow tar xz screenfetch
tar -czpf 3dsalarm.tar.gz 3dsalarm
