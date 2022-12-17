#!/bin/bash
#Realizar un script que imprima el siguiente menú:

function numeros(){
	read -p "Introduce un número: " num1
	read -p "Introduce el segundo número: " num2
}
op=1
until [[ $op -eq 0 ]]; do
echo -e "Elige una opción :
1- Sumar
2- Restar
3- Dividir
4- Multiplicar
0- Salir"
read -p "Introduce una opción: " op
case $op in
	1)
		numeros
		((res=num1+num2))
		echo "$num1 + $num2 = $res"
	;;
	2)
		numeros
		((res=num1-num2))
		echo "$num1 - $num2 = $res"
	;;
	3)
		numeros
		((res=num1/num2))
		echo "$num1 / $num2 = $res"
	;;
	4)
		numeros
		((res=num1*num2))
		echo "$num1 * $num2 = $res"
	;;
	0)
		echo "Has salido"
	;;
	*)
		echo "Error. Has introducido una sintaxis erronea!"
	;;
esac
done
