#!/bin/bash

#Escribe un script que se ejecute cada día a las 1:00 y cumpla las siguientes
#condiciones:

#Si es domingo se genera una copia completa de los directorios /home,
#/etc y /root en la carpeta /copia_seguridad/completa

#Si es cualquier otro día se realiza una copia diaria del directorio /etc
#y se guarda en la carpeta /copia_seguridad_incremental/mes_dia_ano
#(donde se indica la fecha del sistema)

#Las copias de seguridad se realizan con el comando tar
#Siempre se genera una copia en la misma carpeta se genera el fichero
#fecha.txt que contiene la hora exacta del sistema.

fecha=`date +%d-%m-%Y`
d=`date +%d`
m=`date +%m`
Y=`date +%Y`

if [[ date == "dom" ]]; then
	mkdir /copia_seguridad /copia_seguridad/completa
	sudo tar -czpf /root /copia_seguridad/completa /home /etc /root
	echo $fecha >> /copia_seguridad/completa/fecha.txt
else
	mkdir /copia_seguridad_incremental /copia_seguridad_incremental/$fecha
	sudo tar -czpf /copia_seguridad_incremental/$fecha /etc
	echo $fecha >> /copia_seguridad_incremental/fecha.txt
fi
