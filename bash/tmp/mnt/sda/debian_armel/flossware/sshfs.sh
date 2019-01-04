#!/bin/sh -x
sshfs -o nonempty,default_permissions root@admin-ap:/root            /mnt/admin-ap/root
exit 1

sshfs -o nonempty,default_permissions sfloess@admin-ap:/home/sfloess /home/sfloess
sshfs -o nonempty,default_permissions root@admin-ap:/etc             /mnt/admin-ap/etc
sshfs -o allow_other,default_permissions root@admin-ap:/opt/backups     /mnt/admin-ap/backups
sshfs -o allow_other,default_permissions root@admin-ap:/opt/media       /mnt/admin-ap/media
sshfs -o allow_other,default_permissions root@admin-ap:/opt/nas         /mnt/admin-ap/nas
sshfs -o allow_other,default_permissions root@admin-ap:/opt/shared      /mnt/admin-ap/shared
