#!/bin/bash

#Escribe un script llamado apagar.sh que pasando por argumentos permita:
#Reiniciar el equipo ahora
#Reiniciar el equipo dentro de N minutos (el valor de N se pasa como
#parámetro) Si el usuario no escribe ningún parámetro entonces nos mostrará
#las listas de opciones

if [[ $1 ]]; then
	shutdown -r $1
	echo "Este equipo será reiniciado en $1 minutos"
else
	until [[ $op -eq 1 || $op -eq 2 ]]; do
	echo -e "1) Reiniciar el equipo ahora
2) Reiniciar el equipo dentro de N minutos
0) Salir"
	  read -p "Introduce una opción: " op
	  case $op in
	 	1)
	   	reboot
	   	;;

	 	2)
	   	read -p "Introduce el tiempo de reinicio: " tiempo
	   	shutdown -r $tiempo
	  	;;

	 	0)
	   	exit
	  	;;

	 	*)
	  	echo "Introduce un valor válido"
	  	;;
	esac
	done
fi
