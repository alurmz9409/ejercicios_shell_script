#!/bin/bash
#Realiza un script que sume dos números que se pasan como
#parámetros y si no son pasados devolverá error y se mostrará un
#mensaje indicando la forma de ejecutar el script.

if [[ $1 && $2 ]]; then
	((sum=$1+$2))
	echo "$1 + $2 = $sum"
else
	echo "Error: Revisa la sintaxis de los parámetros, introduce 2 números"
fi
