#!/bin/bash

#read i

case $1 in
trojkat)
i=1
while [ $i -le 3 ]
do
#for j in `seq 1 3`
if [ $i -eq 1 ]; then
echo "*"
fi
if [ $i -eq 2 ]; then
echo "**"
fi
if [ $i -eq 3 ]; then
echo "***"
fi
#if [ $i -eq 4]; then
#echo "****"
#fi
i=`expr $i + 1`
done
;;
start)

#if[ -n "$2" ]; then
echo "program nnn `date`" >> log.txt
$2
#fi
;;

stop)
pkill -9 $2
echo "zatrzymano `date`"

;;
esac

