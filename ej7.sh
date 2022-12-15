#!/bin/bash
#Realizar un script utilizando el bucle for que muestre el siguiente
#patrón:

for (( a=1; a<=5; a++  ))
do
	for (( b=1; b<=$a; b++ ))
		do
			echo -e "$b \c"
		done
			echo -e "\n"
done

