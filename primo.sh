#!/bin/bash
#Crea un script primo.sh que verifique si el número pasado por parámetro
#es primo o no.

for((a=2; a<=$1/2; a++))
do
	res=$(( $1%a ))
	if [[ $res -eq 0 ]]
	then
		echo "$1 no es un número primo"
		exit 0
	fi
done
echo "$1 es un número primo"
