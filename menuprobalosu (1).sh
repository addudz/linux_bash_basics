#!/bin/bash

function zagraj_raz(){
./probalosu.sh
}

function zmien_zakres(){
read -p "podaj wartosc zmiany zakresu:  " ZAKRES
sd -i "s/RANDOM %100 +1/RANDOM %ZAKRES +1" probalosu.sh
echo "zakres zostal zmieniony na wartosc $ZAKRES"

}

function ilosc_gier(){
read -p "podaj ile razy chcesz grac:  " ILOSC
for ((i=1; i<=$ILOSC; i++)); do
echo "runda numer: $i"
./probalosu.sh
done }

function koniec_gry(){
echo "dziekuje :) koniec gry"
}

while true; do
echo "menu"
echo "1. gram 1 raz"
echo "2. chce zmienic zakres losow"
echo "3. chce zmienic ilosc gier"
echo "4. chce zakonczyc gre"

read -p "dokonaj wyboru 1-4:  " WYBOR 
case $WYBOR in

1) zagraj_raz
;;
2) zmien_zakres
;;
3) ilosc_gier
;;
4) koniec_gry
exit 0;
;;
*)
echo "nieprawidlowy wybor"
esac
done


