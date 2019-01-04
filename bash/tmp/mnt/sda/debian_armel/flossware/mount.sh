sshfs -o allow_other,default_permissions,nonempty sfloess@admin-ap:/home/sfloess /mnt/admin-ap/home/sfloess
sshfs -o allow_other,default_permissions,nonempty root@admin-ap:/etc             /mnt/admin-ap/etc
sshfs -o allow_other,default_permissions,nonempty root@admin-ap:/root            /mnt/admin-ap/root
sshfs -o allow_other,default_permissions          root@admin-ap:/opt/backups     /mnt/admin-ap/backups
sshfs -o allow_other,default_permissions          root@admin-ap:/opt/media       /mnt/admin-ap/media
sshfs -o allow_other,default_permissions          root@admin-ap:/opt/nas         /mnt/admin-ap/nas
sshfs -o allow_other,default_permissions          root@admin-ap:/opt/shared      /mnt/admin-ap/shared
