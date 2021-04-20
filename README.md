# archlinuxarm-3ds
Archlinux Arm on 3DS

![alt text](https://github.com/mozl3/archlinuxarm-3ds/blob/main/2ds.png?raw=true)


# Istructions (WIP)

## Preparation

1) Create a second Ext4 partition in SDCard
```
Example with 2GB SD:
1st Partition: 100M FAT32 (boot.firm, etc... here)
2nd Partition: 1900M Ext4 (We're gonna install ALARM here)
```
2) Install 3DS Linux in FAT32 partition (see https://github.com/linux-3ds/)
3) Mount Ext4 Partition somewhere (like /mnt)
4) Either create or download prebuilt ALARM tarball and convenience script
5) Extract tarball (keeping permissions) inside Ext4 partition:
```
# tar -xpf /path/to/downloaded/tarball -C /path/to/mounted/partition
```
6) Place convenience chroot script
```
# mv /path/to/downloaded/chroot.sh /path/to/mounted/partition
```
## Running

1) Mount /proc and create block devices
```
# mount -t proc none /proc
# mknod /dev/mmcblk1 b 254 1
# mknod /dev/mmcblk2 b 254 2
```
2) Mount SDCard
```
# mount /dev/mmcblk2 /mnt
```
3) Change directory and execute chroot
```
# cd /mnt
# sh chroot.sh
```
# TODO: Building ALARM tarball manually (check scripts/create.sh for now)
