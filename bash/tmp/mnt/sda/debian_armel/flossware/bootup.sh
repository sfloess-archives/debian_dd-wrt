#!/bin/sh

debdir=/mnt/sda/debian_armel

#mkdir -p $debdir/proc $debdir/sys $debdir/dev $debdir/dev/pts $debdir/tmp $debdir/lib/modules/`uname -r`
mkdir -p $debdir/proc $debdir/sys $debdir/dev $debdir/dev/pts $debdir/tmp

cat /etc/mtab > $debdir/etc/fstab

# ----------------------------------------------------------------------

chmod -R 755 $debdir

chmod -R 700 $debdir/etc/ssh

rm -rf $debdir/run/screen/*

# ----------------------------------------------------------------------

mount -t devpts none  $debdir/dev/pts

mount -o bind   /     $debdir/host
mount -o bind   /dev  $debdir/dev
mount -o bind   /proc $debdir/proc
mount -o bind   /sys  $debdir/sys
mount -o bind   /tmp  $debdir/tmp

#mount -o bind   /lib/modules/`uname -r`  $debdir/lib/modules/`uname -r`

mount -o bind /mnt/sda/dd-wrt/usr/local /usr/local
mount -o bind /mnt/sda/dd-wrt/bin/ipkg  /bin/ipkg
mount -o bind /mnt/sda/dd-wrt/jffs      /jffs

cp -rf /lib/modules  $debdir/lib/

# ----------------------------------------------------------------------

nohup /bin/busybox chroot $debdir $* &

exit $?

