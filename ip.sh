#! /bin/bash
> "/home/mohammad/Dropbox/openhab/raspberrip.txt"
ip_address=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' |
grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'`
while ! mount | grep "/media/mohammad"
do
	echo "not mounted"
done
echo "$ip_address" > "/media/mohammad/USB DISK/raspberrip.txt"
