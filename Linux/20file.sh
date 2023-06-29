#!/bin/sh
for i in $@
do 
ping -c 1 $i &> /dev/null
if [ $? -ne 0 ] ; then
	echo "`date`: ping failed, $i is down!" | mail -s "$i host is down!" devopsbychandu3@gmail.com
fi
done

