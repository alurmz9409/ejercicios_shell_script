#!/bin/bash
#Realizar un script que muestre la tabla de multiplicar de un número
#pasado por parámetro.

for a in 1 2 3 4 5 6 7 8 9 10
do
	echo $(($a*$1))
done
