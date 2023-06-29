#!/bin/sh
a=0
while [ $a -lt 10 ]
do
        rm -rf /directory$a
        a=`expr $a + 1`
done

