#!/bin/sh

PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

while :
do
	echo "------ Starting stream ------"
	ezstream -V
	echo "-----------------------------"
	lame --version
	echo "-----------------------------"
	nrsc5 -v
	echo "-----------------------------"
	echo "nrsc5 -o - -l 3 90.3 -d 0 0 | lame -s 44.0 --noreplaygain --verbose -V 0 -m m - - | ezstream -c /etc/ezstream.xml -v"
	nrsc5 -o - -l 3 90.3 -d 0 0 | lame -s 44.0 --noreplaygain --verbose -V 0 -m m - - | ezstream -c /etc/ezstream.xml -v
	echo "------ Stream exited --------"
done