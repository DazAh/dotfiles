#!/usr/bin/sh
#Rsync Music from server to local HDD.

rsync -azhP --info=progress2 --stats "root@192.168.1.10:/mnt/user/Darren/Personal Files/Music/Albums" /mnt/HDD2/Music -s --delete
if [ $? -eq 0 ]; then
    echo "Sync Complete"
else
    echo "Sync Failed!"
fi
