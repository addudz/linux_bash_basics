#!/bin/bash

ZMIENNA=5
echo "$ZMIENNA"
echo '$ZMIENNA'

ZMIENNA=""
if [ -n $ZMIENNA2]; then
echo "nie jest pusta"
else
echo "jest pusta"
fi

ZMIENNA3=""
if [-n "$ZMIENNA3"]; then
echo "nie jest pusta"
else
echo "jest pusta"
fi

ZMIENNA4=49
ZMIENNA5=50
echo "$ZMIENNA4stopnie"
echo "${ZMIENNA5}stopni"

case $1 in
start)
echo "poczatek `date`" > log.txt
export wiek=18 #zmienia wartosc zmiennej, wyslanej do pliku
$2
;;

stop)
echo "koniec"
;;
dodaj)
echo "podaj dwie liczby"
read a 
read b
if [ $a -gt $b ]
then
echo "$a jest wieksze od $b"
else
echo "$a mniejsze od $b"
fi
;;
dzien)
sleep 3
[ $(date +%w) -eq 6] && echo "sobota" || echo "..."
;;
rysuj)
echo "podaj rozmiar "
read r
o=1
while [ $o -lt $r ]
do
if [ `expr $o % 2` -eq 0 ]
then
echo " "
#continue
else
echo "***"
fi
o=`expr $o + 1`
done
;;
kwadrat)
i=1
while [ $i -lt 3 ]
do
echo "***"
i=`expr $i + 1`
done
;;
#shift)
#echo $*
#shift
#echo $*
#;;


