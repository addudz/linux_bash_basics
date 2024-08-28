#!/bin/bash

LOTERIA=$((RANDOM % 10 + 1))

echo "witaj w grze losujacej"
echo "musisz odgadnac wylosowana liczbe"

while true; do

read -p "podaj liczbe: " LICZBA
if [[ $LICZBA -eq $LOTERIA ]]; then
echo "udalo sie";
exit 0;
elif [[ $LICZBA -lt $LOTERIA ]]; then
echo "za malo";
else
echo "za duzo";
fi
done

