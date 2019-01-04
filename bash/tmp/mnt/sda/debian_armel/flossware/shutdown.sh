#!/bin/bash

umount -a

fusermount -u /mnt/admin-ap/backups
fusermount -u /mnt/admin-ap/media
fusermount -u /mnt/admin-ap/shared
fusermount -u /mnt/admin-ap/nas
fusermount -u /mnt/admin-ap/home/sfloess
fusermount -u /mnt/admin-ap/etc
fusermount -u /mnt/admin-ap/root

/etc/init.d/rsync   stop
/etc/init.d/ssh     stop
/etc/init.d/nis     stop
/etc/init.d/postfix stop
/etc/init.d/rpcbind stop
/etc/init.d/cron    stop
/etc/init.d/ntp     stop
/etc/init.d/rsyslog stop

