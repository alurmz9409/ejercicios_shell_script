#!/bin/bash

#guarde en el fichero /var/log/reinicios.txt la fecha de cada vez
#que se reinicia el equipo (pista @reboot en crontab)

#Características de reinicio
last reboot -n 1 >> /var/log/reinicios.txt
